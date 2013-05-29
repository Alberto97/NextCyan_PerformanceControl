.class public Lcom/brewcrewfoo/performance/widget/PCWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "PCWidget.java"


# instance fields
.field mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    if-nez v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 47
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/brewcrewfoo/performance/widget/PCWidget;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 49
    const-string v3, "com.brewcrewfoo.performance.ACTION_FREQS_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/brewcrewfoo/performance/widget/PCWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 11
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 57
    move-object v8, p3

    .local v8, arr$:[I
    array-length v10, v8

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_0

    aget v3, v8, v9

    .line 58
    .local v3, awi:I
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, max:Ljava/lang/String;
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, min:Ljava/lang/String;
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v0}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, gov:Ljava/lang/String;
    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->getIOScheduler()Ljava/lang/String;

    move-result-object v7

    .local v7, io:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 62
    invoke-virtual/range {v0 .. v7}, Lcom/brewcrewfoo/performance/widget/PCWidget;->onUpdateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 64
    .end local v3           #awi:I
    .end local v4           #max:Ljava/lang/String;
    .end local v5           #min:Ljava/lang/String;
    .end local v6           #gov:Ljava/lang/String;
    .end local v7           #io:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onUpdateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/brewcrewfoo/performance/widget/PCWidget;->mPreferences:Landroid/content/SharedPreferences;

    .line 70
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03000d

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 72
    iget-object v1, p0, Lcom/brewcrewfoo/performance/widget/PCWidget;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "widget_bg_color"

    const/high16 v3, -0x100

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 73
    iget-object v2, p0, Lcom/brewcrewfoo/performance/widget/PCWidget;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "widget_text_color"

    const v4, -0x7f7f80

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 74
    const v3, 0x7f0b0036

    invoke-static {v1}, Lcom/brewcrewfoo/performance/util/Helpers;->getBackground(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 75
    const v1, 0x7f0b0037

    invoke-static {p4}, Lcom/brewcrewfoo/performance/util/Helpers;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 76
    const v1, 0x7f0b0038

    invoke-static {p5}, Lcom/brewcrewfoo/performance/util/Helpers;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    const v1, 0x7f0b0039

    invoke-virtual {v0, v1, p6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 78
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1, p7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 79
    const v1, 0x7f0b0037

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 80
    const v1, 0x7f0b0038

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 81
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 82
    const v1, 0x7f0b0039

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/brewcrewfoo/performance/activities/MainActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    const/high16 v2, 0x800

    invoke-static {p1, p3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 89
    const v2, 0x7f0b0036

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 91
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 92
    return-void
.end method
