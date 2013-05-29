.class Lcom/brewcrewfoo/performance/service/BootService$BootWorker;
.super Landroid/os/AsyncTask;
.source "BootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brewcrewfoo/performance/service/BootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BootWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field final synthetic this$0:Lcom/brewcrewfoo/performance/service/BootService;


# direct methods
.method public constructor <init>(Lcom/brewcrewfoo/performance/service/BootService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "c"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/brewcrewfoo/performance/service/BootService$BootWorker;->this$0:Lcom/brewcrewfoo/performance/service/BootService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/brewcrewfoo/performance/service/BootService$BootWorker;->c:Landroid/content/Context;

    .line 67
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/brewcrewfoo/performance/service/BootService$BootWorker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 29
    .parameter "args"

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/brewcrewfoo/performance/service/BootService$BootWorker;->c:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 75
    .local v18, preferences:Landroid/content/SharedPreferences;
    const-string v23, "cpu_sob"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 76
    const-string v23, "pref_max_cpu"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 77
    .local v14, max:Ljava/lang/String;
    const-string v23, "pref_min_cpu"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 78
    .local v15, min:Ljava/lang/String;
    const-string v23, "pref_gov"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 79
    .local v9, gov:Ljava/lang/String;
    const-string v23, "pref_io"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 81
    .local v12, io:Ljava/lang/String;
    if-nez v14, :cond_0

    if-nez v15, :cond_0

    if-eqz v9, :cond_5

    .line 82
    :cond_0
    new-instance v23, Ljava/io/File;

    const-string v24, "/sys/module/cpu_tegra/parameters/cpu_user_cap"

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v13

    .line 84
    .local v13, mIsTegra3:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->getNumOfCpus()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_4

    .line 85
    if-eqz v14, :cond_1

    .line 86
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    const-string v26, "cpu0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "cpu"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 91
    :cond_1
    if-eqz v15, :cond_2

    .line 92
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    const-string v26, "cpu0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "cpu"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 97
    :cond_2
    if-eqz v9, :cond_3

    .line 98
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    const-string v26, "cpu0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "cpu"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 84
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 104
    :cond_4
    if-eqz v13, :cond_5

    if-eqz v14, :cond_5

    .line 105
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/sys/module/cpu_tegra/parameters/cpu_user_cap"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 110
    .end local v10           #i:I
    .end local v13           #mIsTegra3:Z
    :cond_5
    if-eqz v12, :cond_6

    .line 111
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/sys/block/mmcblk0/queue/scheduler"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 116
    .end local v9           #gov:Ljava/lang/String;
    .end local v12           #io:Ljava/lang/String;
    .end local v14           #max:Ljava/lang/String;
    .end local v15           #min:Ljava/lang/String;
    :cond_6
    const-string v23, "voltage_sob"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 117
    invoke-static/range {v18 .. v18}, Lcom/brewcrewfoo/performance/fragments/VoltageControlSettings;->getVolts(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v22

    .line 119
    .local v22, volts:Ljava/util/List;,"Ljava/util/List<Lcom/brewcrewfoo/performance/util/Voltage;>;"
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v19, sb:Ljava/lang/StringBuilder;
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/brewcrewfoo/performance/util/Voltage;

    .line 121
    .local v21, volt:Lcom/brewcrewfoo/performance/util/Voltage;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Lcom/brewcrewfoo/performance/util/Voltage;->getSavedMV()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 123
    .end local v21           #volt:Lcom/brewcrewfoo/performance/util/Voltage;
    :cond_7
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->getNumOfCpus()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_8

    .line 124
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lcom/brewcrewfoo/performance/util/Helpers;->getVoltagePath()Ljava/lang/String;

    move-result-object v25

    const-string v26, "cpu0"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "cpu"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 123
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 131
    .end local v10           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v19           #sb:Ljava/lang/StringBuilder;
    .end local v22           #volts:Ljava/util/List;,"Ljava/util/List<Lcom/brewcrewfoo/performance/util/Voltage;>;"
    :cond_8
    const-string v23, "pref_fast_charge"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 133
    .local v3, FChargeOn:Z
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string v23, "/sys/kernel/fast_charge/force_fast_charge"

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v7, fastcharge:Ljava/io/File;
    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 135
    .local v8, fwriter:Ljava/io/FileWriter;
    new-instance v4, Ljava/io/BufferedWriter;

    invoke-direct {v4, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 136
    .local v4, bwriter:Ljava/io/BufferedWriter;
    if-eqz v3, :cond_d

    const-string v23, "1"

    :goto_3
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 138
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v10, i:Landroid/content/Intent;
    const-string v23, "com.aokp.romcontrol.FCHARGE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/brewcrewfoo/performance/service/BootService$BootWorker;->c:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v4           #bwriter:Ljava/io/BufferedWriter;
    .end local v7           #fastcharge:Ljava/io/File;
    .end local v8           #fwriter:Ljava/io/FileWriter;
    .end local v10           #i:Landroid/content/Intent;
    :goto_4
    if-eqz v3, :cond_9

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/brewcrewfoo/performance/service/BootService$BootWorker;->c:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f080027

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 148
    .local v6, contentTitle:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/brewcrewfoo/performance/service/BootService$BootWorker;->c:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f080028

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 151
    .local v5, contentText:Ljava/lang/CharSequence;
    new-instance v23, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/brewcrewfoo/performance/service/BootService$BootWorker;->c:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v23

    const v24, 0x7f020002

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v16

    .line 157
    .local v16, n:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/brewcrewfoo/performance/service/BootService$BootWorker;->this$0:Lcom/brewcrewfoo/performance/service/BootService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/brewcrewfoo/performance/service/BootService;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "notification"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/NotificationManager;

    .line 159
    .local v17, nm:Landroid/app/NotificationManager;
    const/16 v23, 0x539

    move-object/from16 v0, v17

    move/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 162
    .end local v5           #contentText:Ljava/lang/CharSequence;
    .end local v6           #contentTitle:Ljava/lang/CharSequence;
    .end local v16           #n:Landroid/app/Notification;
    .end local v17           #nm:Landroid/app/NotificationManager;
    :cond_9
    const-string v23, "pref_minfree_boot"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 163
    const-string v23, "pref_minfree"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 164
    .local v20, values:Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 165
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 170
    .end local v20           #values:Ljava/lang/String;
    :cond_a
    const-string v23, "pref_read_ahead_boot"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 171
    const-string v23, "pref_read_ahead"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 173
    .restart local v20       #values:Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 174
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/sys/devices/virtual/bdi/179:0/read_ahead_kb"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 179
    .end local v20           #values:Ljava/lang/String;
    :cond_b
    const-string v23, "vm_sob"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 180
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pref_dirty_ratio"

    const-string v26, "/proc/sys/vm/dirty_ratio"

    invoke-static/range {v26 .. v26}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/proc/sys/vm/dirty_ratio"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 185
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pref_dirty_background"

    const-string v26, "/proc/sys/vm/dirty_background_ratio"

    invoke-static/range {v26 .. v26}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/proc/sys/vm/dirty_background_ratio"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 190
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pref_dirty_expire"

    const-string v26, "/proc/sys/vm/dirty_expire_centisecs"

    invoke-static/range {v26 .. v26}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/proc/sys/vm/dirty_expire_centisecs"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 195
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pref_dirty_writeback"

    const-string v26, "/proc/sys/vm/dirty_writeback_centisecs"

    invoke-static/range {v26 .. v26}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/proc/sys/vm/dirty_writeback_centisecs"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 200
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pref_min_free_kb"

    const-string v26, "/proc/sys/vm/min_free_kbytes"

    invoke-static/range {v26 .. v26}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/proc/sys/vm/min_free_kbytes"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 204
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pref_overcommit"

    const-string v26, "/proc/sys/vm/overcommit_ratio"

    invoke-static/range {v26 .. v26}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/proc/sys/vm/overcommit_ratio"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 210
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pref_swappiness"

    const-string v26, "/proc/sys/vm/swappiness"

    invoke-static/range {v26 .. v26}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/proc/sys/vm/swappiness"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 216
    new-instance v23, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct/range {v23 .. v23}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "busybox echo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "pref_vfs"

    const-string v26, "/proc/sys/vm/vfs_cache_pressure"

    invoke-static/range {v26 .. v26}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/proc/sys/vm/vfs_cache_pressure"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    .line 222
    :cond_c
    const/16 v23, 0x0

    return-object v23

    .line 136
    .restart local v4       #bwriter:Ljava/io/BufferedWriter;
    .restart local v7       #fastcharge:Ljava/io/File;
    .restart local v8       #fwriter:Ljava/io/FileWriter;
    :cond_d
    :try_start_1
    const-string v23, "0"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 141
    .end local v4           #bwriter:Ljava/io/BufferedWriter;
    .end local v7           #fastcharge:Ljava/io/File;
    .end local v8           #fwriter:Ljava/io/FileWriter;
    :catch_0
    move-exception v23

    goto/16 :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/brewcrewfoo/performance/service/BootService$BootWorker;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 228
    const/4 v0, 0x1

    sput-boolean v0, Lcom/brewcrewfoo/performance/service/BootService;->servicesStarted:Z

    .line 229
    iget-object v0, p0, Lcom/brewcrewfoo/performance/service/BootService$BootWorker;->this$0:Lcom/brewcrewfoo/performance/service/BootService;

    invoke-virtual {v0}, Lcom/brewcrewfoo/performance/service/BootService;->stopSelf()V

    .line 230
    return-void
.end method
