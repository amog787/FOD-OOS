.class public Lcom/android/server/EntropyMixer;
.super Landroid/os/Binder;
.source "EntropyMixer.java"


# static fields
.field private static final ENTROPY_WHAT:I = 0x1

.field private static final ENTROPY_WRITE_PERIOD:I = 0xa4cb80

.field private static final START_NANOTIME:J

.field private static final START_TIME:J

.field private static final TAG:Ljava/lang/String; = "EntropyMixer"


# instance fields
.field private final entropyFile:Ljava/lang/String;

.field private final hwRandomDevice:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private final randomDevice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_TIME:J

    .line 64
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/EntropyMixer;->getSystemDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/entropy.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/dev/urandom"

    const-string v2, "/dev/hw_random"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entropyFile"    # Ljava/lang/String;
    .param p3, "randomDevice"    # Ljava/lang/String;
    .param p4, "hwRandomDevice"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    new-instance v0, Lcom/android/server/EntropyMixer$1;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/EntropyMixer$1;-><init>(Lcom/android/server/EntropyMixer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Lcom/android/server/EntropyMixer$2;

    invoke-direct {v0, p0}, Lcom/android/server/EntropyMixer$2;-><init>(Lcom/android/server/EntropyMixer;)V

    iput-object v0, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    if-eqz p3, :cond_2

    .line 107
    if-eqz p4, :cond_1

    .line 108
    if-eqz p2, :cond_0

    .line 110
    iput-object p3, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lcom/android/server/EntropyMixer;->hwRandomDevice:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->loadInitialEntropy()V

    .line 114
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addDeviceSpecificEntropy()V

    .line 115
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addHwRandomEntropy()V

    .line 116
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->writeEntropy()V

    .line 117
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleEntropyWriter()V

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 127
    return-void

    .line 108
    .end local v0    # "broadcastFilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entropyFile"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hwRandomDevice"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "randomDevice"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/EntropyMixer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/EntropyMixer;

    .line 59
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addHwRandomEntropy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/EntropyMixer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/EntropyMixer;

    .line 59
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->writeEntropy()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/EntropyMixer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/EntropyMixer;

    .line 59
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleEntropyWriter()V

    return-void
.end method

.method private addDeviceSpecificEntropy()V
    .locals 4

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "out":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 171
    const-string v1, "Copyright (C) 2009 The Android Open Source Project"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    const-string v1, "All Your Randomness Are Belong To Us"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    sget-wide v1, Lcom/android/server/EntropyMixer;->START_TIME:J

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 174
    sget-wide v1, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 175
    const-string/jumbo v1, "ro.serialno"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v1, "ro.bootmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v1, "ro.baseband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v1, "ro.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v1, "ro.bootloader"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    const-string/jumbo v1, "ro.hardware"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    const-string/jumbo v1, "ro.revision"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v1, "ro.build.fingerprint"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 185
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    nop

    .line 190
    :goto_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_1

    .line 189
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "EntropyMixer"

    const-string v3, "Unable to add device specific data to the entropy pool"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    nop

    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 190
    goto :goto_0

    .line 193
    :cond_0
    :goto_1
    return-void

    .line 189
    :goto_2
    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 192
    :cond_1
    throw v1
.end method

.method private addHwRandomEntropy()V
    .locals 4

    .line 199
    const-string v0, "EntropyMixer"

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->hwRandomDevice:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    return-void

    .line 205
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->hwRandomDevice:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V

    .line 206
    const-string v1, "Added HW RNG output to entropy pool"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to add HW RNG output to entropy pool"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static getSystemDir()Ljava/lang/String;
    .locals 3

    .line 213
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 214
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    .local v1, "systemDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 216
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loadInitialEntropy()V
    .locals 4

    .line 136
    const-string v0, "EntropyMixer"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failure loading existing entropy file"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 138
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "No existing entropy file -- first boot?"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 142
    :goto_1
    return-void
.end method

.method private scheduleEntropyWriter()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xa4cb80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    return-void
.end method

.method private writeEntropy()V
    .locals 4

    .line 146
    const-string v0, "EntropyMixer"

    :try_start_0
    const-string v1, "Writing entropy..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Unable to write entropy"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
