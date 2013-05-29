.class Lcom/brewcrewfoo/performance/fragments/Advanced$5;
.super Ljava/lang/Object;
.source "Advanced.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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


# direct methods
.method constructor <init>(Lcom/brewcrewfoo/performance/fragments/Advanced;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$5;->this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekbar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$5;->this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    #setter for: Lcom/brewcrewfoo/performance/fragments/Advanced;->mSeekbarProgress:I
    invoke-static {v0, v1}, Lcom/brewcrewfoo/performance/fragments/Advanced;->access$302(Lcom/brewcrewfoo/performance/fragments/Advanced;I)I

    .line 356
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$5;->this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;

    #getter for: Lcom/brewcrewfoo/performance/fragments/Advanced;->settingText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/brewcrewfoo/performance/fragments/Advanced;->access$200(Lcom/brewcrewfoo/performance/fragments/Advanced;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/Advanced$5;->this$0:Lcom/brewcrewfoo/performance/fragments/Advanced;

    #getter for: Lcom/brewcrewfoo/performance/fragments/Advanced;->mSeekbarProgress:I
    invoke-static {v1}, Lcom/brewcrewfoo/performance/fragments/Advanced;->access$300(Lcom/brewcrewfoo/performance/fragments/Advanced;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 357
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekbar"

    .prologue
    .line 365
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekbar"

    .prologue
    .line 361
    return-void
.end method
