.class public Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CPUStateMonitorException;
.super Ljava/lang/Exception;
.source "CPUStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brewcrewfoo/performance/util/CPUStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CPUStateMonitorException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;


# direct methods
.method public constructor <init>(Lcom/brewcrewfoo/performance/util/CPUStateMonitor;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "s"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CPUStateMonitorException;->this$0:Lcom/brewcrewfoo/performance/util/CPUStateMonitor;

    .line 37
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method
