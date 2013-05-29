.class Lcom/brewcrewfoo/performance/fragments/Advanced$6;
.super Ljava/lang/Object;
.source "Advanced.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brewcrewfoo/performance/fragments/Advanced;->openDialog(ILjava/lang/String;ILandroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$pref:Landroid/preference/Preference;

.field final synthetic val$seekbar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/brewcrewfoo/performance/fragments/Advanced;Landroid/widget/SeekBar;Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$6;->this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;

    iput-object p2, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$6;->val$seekbar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$6;->val$pref:Landroid/preference/Preference;

    iput-object p4, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$6;->val$path:Ljava/lang/String;

    iput-object p5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$6;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 383
    iget-object v3, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$6;->this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;

    #getter for: Lcom/brewcrewfoo/performance/fragments/Advanced;->settingText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/brewcrewfoo/performance/fragments/Advanced;->access$200(Lcom/brewcrewfoo/performance/fragments/Advanced;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 385
    .local v2, val:I
    iget-object v3, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$6;->val$seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 386
    iget-object v3, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$6;->val$seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 387
    .local v1, newProgress:I
    iget-object v3, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$6;->val$pref:Landroid/preference/Preference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 388
    new-instance v3, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct {v3}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    iget-object v3, v3, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "busybox echo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$6;->val$path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 390
    iget-object v3, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$6;->this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;

    #getter for: Lcom/brewcrewfoo/performance/fragments/Advanced;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/brewcrewfoo/performance/fragments/Advanced;->access$000(Lcom/brewcrewfoo/performance/fragments/Advanced;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 392
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$6;->val$key:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 393
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 394
    return-void
.end method
