.class Lcom/brewcrewfoo/performance/fragments/CPUSettings$4;
.super Ljava/lang/Object;
.source "CPUSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brewcrewfoo/performance/fragments/CPUSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;


# direct methods
.method constructor <init>(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$4;->this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "v"
    .parameter "checked"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/CPUSettings$4;->this$0:Lcom/brewcrewfoo/performance/fragments/CPUSettings;

    #getter for: Lcom/brewcrewfoo/performance/fragments/CPUSettings;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/brewcrewfoo/performance/fragments/CPUSettings;->access$200(Lcom/brewcrewfoo/performance/fragments/CPUSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 182
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cpu_sob"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    return-void
.end method
