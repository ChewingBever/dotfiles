import yaml

def iterate_dict(dic, prefix=None):
    for key, value in dic.items():
        if isinstance(value, dic):
            pass

with (config.configdir / "config.yml").open() as f:
    yaml_data = yaml.safe_load(f)


# How frequently to save config/cookies etc. (in ms)
c.auto_save.interval = 5000

# Backend to use; webengine is recommended
c.backend = "webengine"

# TODO keybindings

# Show a changelog after every patch update
c.changelog_after_upgrade = "patch"

# TODO color config

c.confirm_quit = ["downloads"]

c.content.blocking.adblock.lists.append("https://www.i-dont-care-about-cookies.eu/abp/")

config.load_autoconfig()
