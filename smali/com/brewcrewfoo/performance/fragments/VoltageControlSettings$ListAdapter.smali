.class public Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "VoltageControlSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/brewcrewfoo/performance/util/Voltage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;


# direct methods
.method public constructor <init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 353
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 354
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 368
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 376
    if-nez p2, :cond_0

    .line 377
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 378
    new-instance v0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;-><init>(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;)V

    .line 379
    .local v0, holder:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;
    const v2, 0x7f0b0019

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->mFreq:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->access$602(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 380
    const v2, 0x7f0b001a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->mCurrentMV:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->access$702(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 382
    const v2, 0x7f0b001b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->mSavedMV:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->access$802(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 384
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 389
    :goto_0
    iget-object v2, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;->this$0:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;

    #getter for: Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->mVoltages:Ljava/util/List;
    invoke-static {v2}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->access$100(Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brewcrewfoo/performance/util/Voltage;

    .line 390
    .local v1, voltage:Lcom/brewcrewfoo/performance/util/Voltage;
    invoke-virtual {v1}, Lcom/brewcrewfoo/performance/util/Voltage;->getFreq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->setFreq(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Lcom/brewcrewfoo/performance/util/Voltage;->getCurrentMv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->setCurrentMV(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1}, Lcom/brewcrewfoo/performance/util/Voltage;->getSavedMV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;->setSavedMV(Ljava/lang/String;)V

    .line 393
    return-object p2

    .line 386
    .end local v0           #holder:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;
    .end local v1           #voltage:Lcom/brewcrewfoo/performance/util/Voltage;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setListItems(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/brewcrewfoo/performance/util/Voltage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, mVoltages:Ljava/util/List;,"Ljava/util/List<Lcom/brewcrewfoo/performance/util/Voltage;>;"
    iput-object p1, p0, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings$ListAdapter;->results:Ljava/util/List;

    .line 398
    return-void
.end method
