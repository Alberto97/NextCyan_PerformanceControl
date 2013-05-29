.class Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$5;
.super Ljava/lang/Object;
.source "VoltageControlSettings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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


# direct methods
.method constructor <init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$5;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    iput-object p2, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$5;->val$voltageMeter:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$5;->val$voltageEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "sb"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 252
    if-eqz p3, :cond_0

    .line 253
    invoke-static {}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->access$500()[I

    move-result-object v1

    aget v1, v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, volt:Ljava/lang/String;
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$5;->val$voltageMeter:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$5;->val$voltageEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .end local v0           #volt:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 264
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 270
    return-void
.end method
