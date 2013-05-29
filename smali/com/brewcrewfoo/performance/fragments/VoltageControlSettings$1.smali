.class Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$1;
.super Ljava/lang/Object;
.source "VoltageControlSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;


# direct methods
.method constructor <init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$1;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 91
    invoke-static {}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->access$000()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "voltage_sob"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    return-void
.end method
