.class Lcom/brewcrewfoo/performance/activities/MainActivity$1;
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
    .line 181
    iput-object p1, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$1;->this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

    iput-object p2, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$1;->val$failedTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 184
    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->checkSu()Z

    move-result v1

    .line 185
    .local v1, canSu:Z
    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->checkBusybox()Z

    move-result v0

    .line 186
    .local v0, canBb:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 187
    iget-object v5, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$1;->this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

    const v6, 0x7f080051

    invoke-virtual {v5, v6}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$1;->this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

    const v6, 0x7f080054

    invoke-virtual {v5, v6}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, message:Ljava/lang/String;
    iget-object v5, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$1;->this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

    iget-object v5, v5, Lcom/brewcrewfoo/performance/activities/MainActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 190
    .local v2, e:Landroid/content/SharedPreferences$Editor;
    const-string v5, "rootcanceled"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    iget-object v5, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$1;->this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

    #calls: Lcom/brewcrewfoo/performance/activities/MainActivity;->suResultDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v4, v3}, Lcom/brewcrewfoo/performance/activities/MainActivity;->access$200(Lcom/brewcrewfoo/performance/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v2           #e:Landroid/content/SharedPreferences$Editor;
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 195
    :cond_1
    iget-object v5, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$1;->this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

    const v6, 0x7f080056

    invoke-virtual {v5, v6}, Lcom/brewcrewfoo/performance/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 196
    .restart local v3       #message:Ljava/lang/String;
    iget-object v5, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$1;->this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

    iget-object v5, v5, Lcom/brewcrewfoo/performance/activities/MainActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 197
    .restart local v2       #e:Landroid/content/SharedPreferences$Editor;
    const-string v5, "rootcanceled"

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    iget-object v5, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$1;->this$0:Lcom/brewcrewfoo/performance/activities/MainActivity;

    iget-object v6, p0, Lcom/brewcrewfoo/performance/activities/MainActivity$1;->val$failedTitle:Ljava/lang/String;

    #calls: Lcom/brewcrewfoo/performance/activities/MainActivity;->suResultDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v3}, Lcom/brewcrewfoo/performance/activities/MainActivity;->access$200(Lcom/brewcrewfoo/performance/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v2           #e:Landroid/content/SharedPreferences$Editor;
    .end local v3           #message:Ljava/lang/String;
    :cond_2
    return-void
.end method
