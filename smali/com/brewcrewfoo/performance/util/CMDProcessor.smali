.class public Lcom/brewcrewfoo/performance/util/CMDProcessor;
.super Ljava/lang/Object;
.source "CMDProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;,
        Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;
    }
.end annotation


# instance fields
.field public sh:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

.field public su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    const-string v1, "sh"

    invoke-direct {v0, p0, v1}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;-><init>(Lcom/brewcrewfoo/performance/util/CMDProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->sh:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    .line 35
    new-instance v0, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    const-string v1, "su"

    invoke-direct {v0, p0, v1}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;-><init>(Lcom/brewcrewfoo/performance/util/CMDProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    .line 36
    return-void
.end method
