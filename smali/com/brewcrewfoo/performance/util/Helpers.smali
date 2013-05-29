.class public Lcom/brewcrewfoo/performance/util/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# static fields
.field private static mVoltagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBusybox()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 70
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/bin/busybox"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/busybox"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    const-string v2, "PerformanceControl"

    const-string v3, "Busybox not in xbin or bin!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .local v0, e:Ljava/lang/NullPointerException;
    :goto_0
    return v1

    .line 77
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    :try_start_0
    new-instance v2, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct {v2}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    iget-object v2, v2, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    const-string v3, "busybox mount"

    invoke-virtual {v2, v3}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;->success()Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    const-string v2, "PerformanceControl"

    const-string v3, " Busybox is there but it is borked! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .restart local v0       #e:Ljava/lang/NullPointerException;
    const-string v2, "PerformanceControl"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkSu()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 43
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/bin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    const-string v2, "PerformanceControl"

    const-string v3, "su does not exist!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .local v0, e:Ljava/lang/NullPointerException;
    :goto_0
    return v1

    .line 50
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    :try_start_0
    new-instance v2, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct {v2}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    iget-object v2, v2, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    const-string v3, "ls /data/app-private"

    invoke-virtual {v2, v3}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;->success()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const-string v2, "PerformanceControl"

    const-string v3, " SU exists and we have permission"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const-string v2, "PerformanceControl"

    const-string v3, " SU exists but we dont have permission"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .restart local v0       #e:Ljava/lang/NullPointerException;
    const-string v2, "PerformanceControl"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAvailableIOSchedulers()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, schedulers:[Ljava/lang/String;
    const-string v3, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v3}, Lcom/brewcrewfoo/performance/util/Helpers;->readStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, aux:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 211
    array-length v3, v0

    new-array v2, v3, [Ljava/lang/String;

    .line 212
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 213
    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_0

    .line 214
    aget-object v3, v0, v1

    const/4 v4, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 212
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_0
    aget-object v3, v0, v1

    aput-object v3, v2, v1

    goto :goto_1

    .line 220
    .end local v1           #i:I
    :cond_1
    return-object v2
.end method

.method public static getBackground(I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bgcolor"

    .prologue
    .line 376
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 377
    .local v2, config:Landroid/graphics/Bitmap$Config;
    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static {v4, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 379
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 380
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    :goto_0
    return-object v0

    .line 383
    :catch_0
    move-exception v3

    .line 384
    .local v3, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIOScheduler()Ljava/lang/String;
    .locals 8

    .prologue
    .line 243
    const/4 v4, 0x0

    .line 244
    .local v4, scheduler:Ljava/lang/String;
    const-string v6, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v6}, Lcom/brewcrewfoo/performance/util/Helpers;->readStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, schedulers:[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 246
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 247
    .local v3, s:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_1

    .line 248
    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 253
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    return-object v4

    .line 246
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #s:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getNumOfCpus()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 262
    const/4 v4, 0x1

    .line 263
    .local v4, numOfCpu:I
    const-string v6, "/sys/devices/system/cpu/present"

    invoke-static {v6}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, numOfCpus:Ljava/lang/String;
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, cpuCount:[Ljava/lang/String;
    array-length v6, v0

    if-le v6, v7, :cond_0

    .line 267
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 268
    .local v2, cpuStart:I
    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 270
    .local v1, cpuEnd:I
    sub-int v6, v1, v2

    add-int/lit8 v4, v6, 0x1

    .line 272
    if-gez v4, :cond_0

    .line 273
    const/4 v4, 0x1

    .line 278
    .end local v1           #cpuEnd:I
    .end local v2           #cpuStart:I
    :cond_0
    :goto_0
    return v4

    .line 274
    :catch_0
    move-exception v3

    .line 275
    .local v3, ex:Ljava/lang/NumberFormatException;
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static getVoltagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/brewcrewfoo/performance/util/Helpers;->mVoltagePath:Ljava/lang/String;

    return-object v0
.end method

.method public static readFileViaShell(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "filePath"
    .parameter "useSu"

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, cr:Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;
    if-eqz p1, :cond_0

    .line 170
    new-instance v1, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct {v1}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    iget-object v1, v1, Lcom/brewcrewfoo/performance/util/CMDProcessor;->su:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    move-result-object v0

    .line 174
    :goto_0
    invoke-virtual {v0}, Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;->success()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, v0, Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    .line 176
    :goto_1
    return-object v1

    .line 172
    :cond_0
    new-instance v1, Lcom/brewcrewfoo/performance/util/CMDProcessor;

    invoke-direct {v1}, Lcom/brewcrewfoo/performance/util/CMDProcessor;-><init>()V

    iget-object v1, v1, Lcom/brewcrewfoo/performance/util/CMDProcessor;->sh:Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brewcrewfoo/performance/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/brewcrewfoo/performance/util/CMDProcessor$CommandResult;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "fname"

    .prologue
    .line 144
    const/4 v2, 0x0

    .line 146
    .local v2, line:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x200

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 150
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    move-object v3, v2

    .line 157
    .end local v0           #br:Ljava/io/BufferedReader;
    :goto_0
    return-object v3

    .line 150
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    .end local v0           #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 153
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PerformanceControl"

    const-string v4, "IO Exception when reading sys file"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/brewcrewfoo/performance/util/Helpers;->readFileViaShell(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static readStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "fname"

    .prologue
    .line 230
    invoke-static {p0}, Lcom/brewcrewfoo/performance/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 232
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 234
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restartPC(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const v3, 0x10a0001

    const/high16 v2, 0x10a

    .line 342
    if-nez p0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 344
    :cond_0
    const/high16 v0, 0x10a

    .line 345
    .local v0, enter_anim:I
    const v1, 0x10a0001

    .line 346
    .local v1, exit_anim:I
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 347
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 348
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 349
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setVoltagePath(Ljava/lang/String;)V
    .locals 3
    .parameter "voltageFile"

    .prologue
    .line 312
    const-string v0, "PerformanceControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is being set as the uv table path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    sput-object p0, Lcom/brewcrewfoo/performance/util/Helpers;->mVoltagePath:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public static toMHz(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mhzString"

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateAppWidget(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 358
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 359
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/brewcrewfoo/performance/widget/PCWidget;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 362
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 363
    const-string v2, "com.brewcrewfoo.performance.ACTION_FREQS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v2, "appWidgetIds"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    return-void
.end method

.method public static voltageFileExists()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 290
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/UV_mV_table"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/UV_mV_table"

    invoke-static {v1}, Lcom/brewcrewfoo/performance/util/Helpers;->setVoltagePath(Ljava/lang/String;)V

    .line 303
    :goto_0
    return v0

    .line 293
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/vdd_levels"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/vdd_levels"

    invoke-static {v1}, Lcom/brewcrewfoo/performance/util/Helpers;->setVoltagePath(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/vdd_sysfs_levels"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/vdd_sysfs_levels"

    invoke-static {v1}, Lcom/brewcrewfoo/performance/util/Helpers;->setVoltagePath(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/cpufreq/vdd_levels"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    const-string v1, "/sys/devices/system/cpu/cpufreq/vdd_levels"

    invoke-static {v1}, Lcom/brewcrewfoo/performance/util/Helpers;->setVoltagePath(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
