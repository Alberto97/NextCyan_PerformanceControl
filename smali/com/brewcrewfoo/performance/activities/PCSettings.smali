.class public Lcom/brewcrewfoo/performance/activities/PCSettings;
.super Landroid/preference/PreferenceActivity;
.source "PCSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mLightThemePref:Landroid/preference/CheckBoxPreference;

.field mPreferences:Landroid/content/SharedPreferences;

.field private mVersion:Landroid/preference/Preference;

.field private mWidgetBgColorPref:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field private mWidgetTextColorPref:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/brewcrewfoo/performance/activities/PCSettings;->mPreferences:Landroid/content/SharedPreferences;

    .line 44
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/activities/PCSettings;->addPreferencesFromResource(I)V

    .line 46
    const-string v0, "use_light_theme"

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/activities/PCSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/brewcrewfoo/performance/activities/PCSettings;->mLightThemePref:Landroid/preference/CheckBoxPreference;

    .line 48
    const-string v0, "widget_bg_color"

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/activities/PCSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v0, p0, Lcom/brewcrewfoo/performance/activities/PCSettings;->mWidgetBgColorPref:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 49
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/PCSettings;->mWidgetBgColorPref:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    const-string v0, "widget_text_color"

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/activities/PCSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v0, p0, Lcom/brewcrewfoo/performance/activities/PCSettings;->mWidgetTextColorPref:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 52
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/PCSettings;->mWidgetTextColorPref:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    const-string v0, "version_info"

    invoke-virtual {p0, v0}, Lcom/brewcrewfoo/performance/activities/PCSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/brewcrewfoo/performance/activities/PCSettings;->mVersion:Landroid/preference/Preference;

    .line 55
    iget-object v0, p0, Lcom/brewcrewfoo/performance/activities/PCSettings;->mVersion:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08005b

    invoke-virtual {p0, v2}, Lcom/brewcrewfoo/performance/activities/PCSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1.0.4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/activities/PCSettings;->setTheme()V

    .line 58
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 73
    iget-object v4, p0, Lcom/brewcrewfoo/performance/activities/PCSettings;->mWidgetBgColorPref:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne p1, v4, :cond_0

    .line 74
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, hex:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v2

    .line 78
    .local v2, intHex:I
    iget-object v4, p0, Lcom/brewcrewfoo/performance/activities/PCSettings;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "widget_bg_color"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    invoke-static {p0}, Lcom/brewcrewfoo/performance/util/Helpers;->updateAppWidget(Landroid/content/Context;)V

    .line 94
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #hex:Ljava/lang/String;
    .end local v2           #intHex:I
    :goto_0
    return v3

    .line 83
    :cond_0
    iget-object v4, p0, Lcom/brewcrewfoo/performance/activities/PCSettings;->mWidgetTextColorPref:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne p1, v4, :cond_1

    .line 84
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .restart local v1       #hex:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v2

    .line 88
    .restart local v2       #intHex:I
    iget-object v4, p0, Lcom/brewcrewfoo/performance/activities/PCSettings;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "widget_text_color"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    invoke-static {p0}, Lcom/brewcrewfoo/performance/util/Helpers;->updateAppWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 94
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #hex:Ljava/lang/String;
    .end local v2           #intHex:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 63
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, key:Ljava/lang/String;
    const-string v1, "use_light_theme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {p0}, Lcom/brewcrewfoo/performance/util/Helpers;->restartPC(Landroid/app/Activity;)V

    .line 66
    const/4 v1, 0x1

    .line 68
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 107
    return-void
.end method

.method public setTheme()V
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/brewcrewfoo/performance/activities/PCSettings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "use_light_theme"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 113
    .local v0, is_light_theme:Z
    if-eqz v0, :cond_0

    const v1, 0x7f090004

    :goto_0
    invoke-virtual {p0, v1}, Lcom/brewcrewfoo/performance/activities/PCSettings;->setTheme(I)V

    .line 114
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/activities/PCSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/activities/PCSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_1

    const v1, 0x7f020001

    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-void

    .line 113
    :cond_0
    const v1, 0x7f090003

    goto :goto_0

    .line 114
    :cond_1
    const/high16 v1, 0x7f02

    goto :goto_1
.end method
