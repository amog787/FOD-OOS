.class public final Lcom/android/server/MemoryPressureUtil;
.super Ljava/lang/Object;
.source "MemoryPressureUtil.java"


# static fields
.field private static final FILE:Ljava/lang/String; = "/proc/pressure/memory"

.field private static final TAG:Ljava/lang/String; = "MemoryPressure"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentPsiState()Ljava/lang/String;
    .locals 5

    .line 39
    const-string v0, "/proc/pressure/memory"

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 40
    .local v1, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 42
    .local v2, "contents":Ljava/io/StringWriter;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const-string v3, "----- Output from /proc/pressure/memory -----\n"

    invoke-virtual {v2, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 44
    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 45
    const-string v0, "----- End output from /proc/pressure/memory -----\n\n"

    invoke-virtual {v2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "MemoryPressure"

    const-string v4, "Could not read /proc/pressure/memory"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 51
    nop

    .line 52
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :goto_1
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 51
    throw v0
.end method
