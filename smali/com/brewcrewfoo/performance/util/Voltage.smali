.class public Lcom/brewcrewfoo/performance/util/Voltage;
.super Ljava/lang/Object;
.source "Voltage.java"


# instance fields
.field private mCurrentMv:Ljava/lang/String;

.field private mFreq:Ljava/lang/String;

.field private mSavedMv:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentMv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/brewcrewfoo/performance/util/Voltage;->mCurrentMv:Ljava/lang/String;

    return-object v0
.end method

.method public getFreq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/brewcrewfoo/performance/util/Voltage;->mFreq:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedMV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/brewcrewfoo/performance/util/Voltage;->mSavedMv:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentMV(Ljava/lang/String;)V
    .locals 0
    .parameter "currentMv"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/brewcrewfoo/performance/util/Voltage;->mCurrentMv:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setFreq(Ljava/lang/String;)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/brewcrewfoo/performance/util/Voltage;->mFreq:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setSavedMV(Ljava/lang/String;)V
    .locals 0
    .parameter "savedMv"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/brewcrewfoo/performance/util/Voltage;->mSavedMv:Ljava/lang/String;

    .line 44
    return-void
.end method
