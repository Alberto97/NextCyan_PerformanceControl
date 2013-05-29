.class public Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VoltageControlSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private mCurrentMV:Landroid/widget/TextView;

.field private mFreq:Landroid/widget/TextView;

.field private mSavedMV:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;


# direct methods
.method public constructor <init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->this$1:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$602(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->mFreq:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$702(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->mCurrentMV:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$802(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->mSavedMV:Landroid/widget/TextView;

    return-object p1
.end method


# virtual methods
.method public setCurrentMV(Ljava/lang/String;)V
    .locals 4
    .parameter "currentMv"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->mCurrentMV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->this$1:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;

    iget-object v2, v2, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    invoke-virtual {v2}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    return-void
.end method

.method public setFreq(Ljava/lang/String;)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->mFreq:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    return-void
.end method

.method public setSavedMV(Ljava/lang/String;)V
    .locals 4
    .parameter "savedMv"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->mSavedMV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->this$1:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;

    iget-object v2, v2, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    invoke-virtual {v2}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    return-void
.end method
