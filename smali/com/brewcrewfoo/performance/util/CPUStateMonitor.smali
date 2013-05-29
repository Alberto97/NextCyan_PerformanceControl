.class public Lcom/brewcrewfoo/performance/util/CPUStateMonitor;
.super Ljava/lang/Object;
.source "CPUStateMonitor.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;,
        Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CPUStateMonitorException;
    }
.end annotation


# instance fields
.field private mOffsets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mStates:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mOffsets:Ljava/util/Map;

    .line 41
    return-void
.end method

.method private readInStates(Ljava/io/BufferedReader;)V
    .locals 8
    .parameter "br"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CPUStateMonitorException;
        }
    .end annotation

    .prologue
    .line 138
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 139
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, nums:[Ljava/lang/String;
    iget-object v3, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mStates:Ljava/util/List;

    new-instance v4, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;-><init>(Lcom/brewcrewfoo/performance/util/CPUStateMonitor;IJ)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #nums:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CPUStateMonitorException;

    const-string v4, "Problem processing time-in-states file"

    invoke-direct {v3, p0, v4}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CPUStateMonitorException;-><init>(Lcom/brewcrewfoo/performance/util/CPUStateMonitor;Ljava/lang/String;)V

    throw v3

    .line 147
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #line:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getOffsets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mOffsets:Ljava/util/Map;

    return-object v0
.end method

.method public getStates()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v6, states:Ljava/util/List;,"Ljava/util/List<Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;>;"
    iget-object v7, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mStates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;

    .line 62
    .local v5, state:Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;
    iget-wide v0, v5, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->duration:J

    .line 63
    .local v0, duration:J
    iget-object v7, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mOffsets:Ljava/util/Map;

    iget v8, v5, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->freq:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 64
    iget-object v7, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mOffsets:Ljava/util/Map;

    iget v8, v5, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->freq:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 65
    .local v3, offset:J
    cmp-long v7, v3, v0

    if-gtz v7, :cond_1

    .line 66
    sub-long/2addr v0, v3

    .line 72
    .end local v3           #offset:J
    :cond_0
    new-instance v7, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;

    iget v8, v5, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->freq:I

    invoke-direct {v7, p0, v8, v0, v1}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;-><init>(Lcom/brewcrewfoo/performance/util/CPUStateMonitor;IJ)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .restart local v3       #offset:J
    :cond_1
    iget-object v7, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mOffsets:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 69
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->getStates()Ljava/util/List;

    move-result-object v6

    .line 74
    .end local v0           #duration:J
    .end local v3           #offset:J
    .end local v5           #state:Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;
    .end local v6           #states:Ljava/util/List;,"Ljava/util/List<Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;>;"
    :cond_2
    return-object v6
.end method

.method public getTotalStateTime()J
    .locals 9

    .prologue
    .line 78
    const-wide/16 v5, 0x0

    .line 79
    .local v5, sum:J
    const-wide/16 v2, 0x0

    .line 81
    .local v2, offset:J
    iget-object v7, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mStates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;

    .line 82
    .local v4, state:Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;
    iget-wide v7, v4, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->duration:J

    add-long/2addr v5, v7

    goto :goto_0

    .line 85
    .end local v4           #state:Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;
    :cond_0
    iget-object v7, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mOffsets:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v2, v7

    goto :goto_1

    .line 88
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_1
    sub-long v7, v5, v2

    return-wide v7
.end method

.method public removeOffsets()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mOffsets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 110
    return-void
.end method

.method public setOffsets()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CPUStateMonitorException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v2, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mOffsets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 101
    invoke-virtual {p0}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->updateStates()Ljava/util/List;

    .line 103
    iget-object v2, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;

    .line 104
    .local v1, state:Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;
    iget-object v2, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mOffsets:Ljava/util/Map;

    iget v3, v1, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->freq:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, v1, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;->duration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    .end local v1           #state:Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;
    :cond_0
    return-void
.end method

.method public setOffsets(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, offsets:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mOffsets:Ljava/util/Map;

    .line 97
    return-void
.end method

.method public updateStates()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CPUStateMonitorException;
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 115
    .local v3, is:Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 116
    .local v2, ir:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 117
    .local v0, br:Ljava/io/BufferedReader;
    iget-object v6, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mStates:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 118
    invoke-direct {p0, v0}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->readInStates(Ljava/io/BufferedReader;)V

    .line 119
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    div-long v4, v6, v8

    .line 127
    .local v4, sleepTime:J
    iget-object v6, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mStates:Ljava/util/List;

    new-instance v7, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8, v4, v5}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CpuState;-><init>(Lcom/brewcrewfoo/performance/util/CPUStateMonitor;IJ)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v6, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mStates:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 131
    iget-object v6, p0, Lcom/brewcrewfoo/performance/util/CPUStateMonitor;->mStates:Ljava/util/List;

    return-object v6

    .line 120
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #ir:Ljava/io/InputStreamReader;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #sleepTime:J
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/io/IOException;
    new-instance v6, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CPUStateMonitorException;

    const-string v7, "Problem opening time-in-states file"

    invoke-direct {v6, p0, v7}, Lcom/brewcrewfoo/performance/util/CPUStateMonitor$CPUStateMonitorException;-><init>(Lcom/brewcrewfoo/performance/util/CPUStateMonitor;Ljava/lang/String;)V

    throw v6
.end method
