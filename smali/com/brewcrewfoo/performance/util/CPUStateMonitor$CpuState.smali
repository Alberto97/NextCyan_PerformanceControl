.class public Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;
.super Ljava/lang/Object;
.source "CPUStateMonitor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseValueOf",
        "UseValueOf"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brewcrewfoo/performance/util/CPUStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CpuState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;",
        ">;"
    }
.end annotation


# instance fields
.field public duration:J

.field public freq:I

.field final synthetic this$0:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;


# direct methods
.method public constructor <init>(Lcom/brewcrewfoo/performance/util/CPUStateMonitor;IJ)V
    .locals 2
    .parameter
    .parameter "a"
    .parameter "b"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->this$0:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->freq:I

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->duration:J

    .line 44
    iput p2, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->freq:I

    .line 45
    iput-wide p3, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->duration:J

    .line 46
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;)I
    .locals 3
    .parameter "state"

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Integer;

    iget v2, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->freq:I

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 53
    .local v0, a:Ljava/lang/Integer;
    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->freq:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 54
    .local v1, b:Ljava/lang/Integer;
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->compareTo(Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;)I

    move-result v0

    return v0
.end method
