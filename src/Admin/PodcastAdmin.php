<?php

namespace Kraftausdruck\Admin;

use SilverStripe\Admin\ModelAdmin;
use SilverStripe\Control\Director;
use SilverStripe\Forms\LiteralField;
use Kraftausdruck\Models\PodcastSeries;
use Kraftausdruck\Models\PodcastEpisode;
use Symbiote\GridFieldExtensions\GridFieldOrderableRows;


class PodcastAdmin extends ModelAdmin
{

    private static $managed_models = [
        PodcastEpisode::class,
        PodcastSeries::class
    ];

    private static $menu_icon_class = 'font-icon-podcast';

    private static $url_segment = 'podcasts';
    private static $menu_title = 'Podcasts';

    public function getEditForm($id = null, $fields = null)
    {
        $form = parent::getEditForm($id, $fields);
        if ($this->modelClass == PodcastEpisode::class)
        {
            if(Director::isLive())
            {
                $message = _t(__CLASS__ . '.ElementPodcastNeeded',
                    'Podcasts are displayed per "Podcast Element".<br/><a target="_blank" href="https://www.google.com/ping?sitemap={BaseURL}sitemap.xml/sitemap/Kraftausdruck-Models-JobPosting/1">Ping Google</a>',
                    ['BaseURL' => Director::absoluteBaseURL()]
                );
                $form->Fields()->unshift(
                    LiteralField::create(
                        'PodcastNeeded',
                        sprintf(
                            '<p class="alert alert-info">%s</p>',
                            $message
                        )
                    )
                );
            }

            $grid_field = $form
                ->Fields()
                ->fieldByName($this->sanitiseClassName($this->modelClass));

            $config = $grid_field->getConfig();
            $config->addComponent(new GridFieldOrderableRows('Sort'));
        }
        return $form;
    }
}
