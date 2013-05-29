.class Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$4;
.super Ljava/lang/Object;
.source "VoltageControlSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

.field final synthetic val$voltageEdit:Landroid/widget/EditText;

.field final synthetic val$voltageMeter:Landroid/widget/TextView;

.field final synthetic val$voltageSeek:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/SeekBar;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$4;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    iput-object p2, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$4;->val$voltageEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$4;->val$voltageMeter:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$4;->val$voltageSeek:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 219
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 225
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 230
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$4;->val$voltageEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, text:Ljava/lang/String;
    const/4 v3, 0x0

    .line 233
    .local v3, value:I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 237
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$4;->val$voltageMeter:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mV"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    #calls: Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getNearestStepIndex(I)I
    invoke-static {v3}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->access$400(I)I

    move-result v0

    .line 239
    .local v0, index:I
    iget-object v4, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$4;->val$voltageSeek:Landroid/widget/SeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 240
    .end local v0           #index:I
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, nfe:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
