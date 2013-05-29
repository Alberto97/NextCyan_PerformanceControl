.class Lcom/brewcrewfoo/performance/activities/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brewcrewfoo/performance/activities/MainActivity;->launchFirstRunDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

.field final synthetic val$failedTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/brewcrewfoo/performance/activities/MainActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$2;->this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

    iput-object p2, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$2;->val$failedTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 173
    iget-object v2, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$2;->this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

    const v3, 0x7f080055

    invoke-virtual {v2, v3}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$2;->this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

    iget-object v2, v2, Lcom/brewcrewfoo/performance/activities/MainActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v2, "rootcanceled"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    iget-object v2, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$2;->this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

    iget-object v3, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$2;->val$failedTitle:Ljava/lang/String;

    #calls: Lcom/brewcrewfoo/performance/activities/MainActivity;->suResultDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/brewcrewfoo/performance/activities/MainActivity;->access$200(Lcom/brewcrewfoo/performance/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method
