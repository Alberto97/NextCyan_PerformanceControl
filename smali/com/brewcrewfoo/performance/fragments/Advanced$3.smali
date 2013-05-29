.class Lcom/brewcrewfoo/performance/fragments/Advanced$3;
.super Ljava/lang/Object;
.source "Advanced.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

.field final synthetic val$seekbar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/brewcrewfoo/performance/fragments/Advanced;Landroid/widget/SeekBar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$3;->this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;

    iput-object p2, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$3;->val$seekbar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 318
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$3;->this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;

    #getter for: Lcom/brewcrewfoo/performance/fragments/Advanced;->settingText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/brewcrewfoo/performance/fragments/Advanced;->access$200(Lcom/brewcrewfoo/performance/fragments/Advanced;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 321
    .local v0, val:I
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$3;->val$seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 322
    const/4 v1, 0x1

    .line 324
    .end local v0           #val:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
