.class final Lcom/android/server/VibratorService$VibratorShellCommand;
.super Landroid/os/ShellCommand;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibratorShellCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    }
.end annotation


# instance fields
.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 1885
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1856
    iput-object p1, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 1857
    iput-object p2, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    .line 1858
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/VibratorService;
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # Lcom/android/server/VibratorService$1;

    .line 1841
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V

    return-void
.end method

.method private checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z
    .locals 5
    .param p1, "opts"    # Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    .line 1877
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2800(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1879
    .local v0, "zenMode":I
    if-eqz v0, :cond_1

    iget-boolean v1, p1, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->force:Z

    if-nez v1, :cond_1

    .line 1880
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "pw":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .line 1881
    :try_start_1
    const-string v3, "Ignoring because device is on DND mode "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1882
    const-class v3, Landroid/provider/Settings$Global;

    const-string v4, "ZEN_MODE_"

    invoke-static {v3, v4, v0}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1884
    const/4 v3, 0x1

    .line 1885
    :try_start_2
    invoke-static {v2, v1}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1884
    return v3

    .line 1880
    :catchall_0
    move-exception v2

    .end local v0    # "zenMode":I
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    .end local p1    # "opts":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1885
    .restart local v0    # "zenMode":I
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    .restart local p1    # "opts":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_0

    :try_start_4
    invoke-static {v2, v1}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0    # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    .end local p1    # "opts":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :cond_0
    throw v3
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1889
    .end local v0    # "zenMode":I
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    .restart local p1    # "opts":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :cond_1
    goto :goto_0

    .line 1887
    :catch_0
    move-exception v0

    .line 1891
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private runPrebaked()I
    .locals 14

    .line 1985
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "runPrebaked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1987
    :try_start_0
    new-instance v2, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;-><init>(Lcom/android/server/VibratorService$VibratorShellCommand;Lcom/android/server/VibratorService$1;)V

    .line 1990
    .local v2, "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1991
    invoke-virtual {v2, v4}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->check(Ljava/lang/String;)V

    goto :goto_0

    .line 1994
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 1995
    nop

    .line 2011
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1995
    return v5

    .line 1998
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2000
    .local v3, "id":I
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 2001
    .local v6, "description":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 2002
    const-string v7, "Shell command"

    move-object v6, v7

    move-object v13, v6

    goto :goto_1

    .line 2001
    :cond_2
    move-object v13, v6

    .line 2005
    .end local v6    # "description":Ljava/lang/String;
    .local v13, "description":Ljava/lang/String;
    :goto_1
    nop

    .line 2006
    invoke-static {v3, v5}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v9

    .line 2007
    .local v9, "effect":Landroid/os/VibrationEffect;
    iget-object v6, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v10, 0x0

    const-string v11, "Shell Command"

    iget-object v12, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    move-object v8, v13

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2009
    nop

    .line 2011
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2009
    return v5

    .line 2011
    .end local v2    # "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    .end local v3    # "id":I
    .end local v4    # "opt":Ljava/lang/String;
    .end local v9    # "effect":Landroid/os/VibrationEffect;
    .end local v13    # "description":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private runVibrate()I
    .locals 15

    .line 1895
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "runVibrate"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1897
    :try_start_0
    new-instance v2, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;-><init>(Lcom/android/server/VibratorService$VibratorShellCommand;Lcom/android/server/VibratorService$1;)V

    .line 1900
    .local v2, "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1901
    invoke-virtual {v2, v4}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->check(Ljava/lang/String;)V

    goto :goto_0

    .line 1904
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 1905
    nop

    .line 1920
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1905
    return v5

    .line 1908
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1909
    .local v6, "duration":J
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 1910
    .local v3, "description":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1911
    const-string v8, "Shell command"

    move-object v3, v8

    .line 1914
    :cond_2
    const/4 v8, -0x1

    .line 1915
    invoke-static {v6, v7, v8}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v11

    .line 1916
    .local v11, "effect":Landroid/os/VibrationEffect;
    iget-object v8, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/4 v12, 0x0

    const-string v13, "Shell Command"

    iget-object v14, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    move-object v10, v3

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1918
    nop

    .line 1920
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1918
    return v5

    .line 1920
    .end local v2    # "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "opt":Ljava/lang/String;
    .end local v6    # "duration":J
    .end local v11    # "effect":Landroid/os/VibrationEffect;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private runWaveform()I
    .locals 21

    .line 1925
    move-object/from16 v1, p0

    const-wide/32 v2, 0x800000

    const-string/jumbo v0, "runWaveform"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1927
    :try_start_0
    const-string v0, "Shell command"

    .line 1928
    .local v0, "description":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1929
    .local v4, "repeat":I
    const/4 v5, 0x0

    .line 1930
    .local v5, "amplitudesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;-><init>(Lcom/android/server/VibratorService$VibratorShellCommand;Lcom/android/server/VibratorService$1;)V

    .line 1933
    .local v6, "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    .local v14, "opt":Ljava/lang/String;
    const/4 v15, 0x0

    if-eqz v7, :cond_8

    .line 1934
    const/4 v7, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x5d4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v8, v9, :cond_3

    const/16 v9, 0x5d7

    if-eq v8, v9, :cond_2

    const/16 v9, 0x5e5

    if-eq v8, v9, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v8, "-r"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v15, v11

    goto :goto_2

    :cond_2
    const-string v8, "-d"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_3
    const-string v8, "-a"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v15, v10

    goto :goto_2

    :goto_1
    move v15, v7

    :goto_2
    if-eqz v15, :cond_6

    if-eq v15, v11, :cond_5

    if-eq v15, v10, :cond_4

    .line 1947
    invoke-virtual {v6, v14}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->check(Ljava/lang/String;)V

    goto :goto_3

    .line 1942
    :cond_4
    if-nez v5, :cond_7

    .line 1943
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v7

    goto :goto_3

    .line 1939
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v4, v7

    .line 1940
    goto :goto_3

    .line 1936
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 1937
    nop

    .line 1948
    :cond_7
    :goto_3
    goto :goto_0

    .line 1952
    :cond_8
    invoke-direct {v1, v6}, Lcom/android/server/VibratorService$VibratorShellCommand;->checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_9

    .line 1953
    nop

    .line 1980
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1953
    return v15

    .line 1956
    :cond_9
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v7

    .line 1959
    .local v13, "timingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v7

    .local v16, "arg":Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 1960
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 1961
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1963
    :cond_a
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1968
    :cond_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    sget-object v8, Lcom/android/server/-$$Lambda$ELHKvd8JMVRD8rbALqYPKbDX2mM;->INSTANCE:Lcom/android/server/-$$Lambda$ELHKvd8JMVRD8rbALqYPKbDX2mM;

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v7

    move-object v12, v7

    .line 1969
    .local v12, "timings":[J
    if-nez v5, :cond_c

    .line 1970
    invoke-static {v12, v4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v7

    move-object/from16 v17, v7

    .local v7, "effect":Landroid/os/VibrationEffect;
    goto :goto_5

    .line 1972
    .end local v7    # "effect":Landroid/os/VibrationEffect;
    :cond_c
    nop

    .line 1973
    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    sget-object v8, Lcom/android/server/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/server/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    .line 1974
    .local v7, "amplitudes":[I
    invoke-static {v12, v7, v4}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v8

    move-object v7, v8

    move-object/from16 v17, v7

    .line 1976
    .end local v7    # "amplitudes":[I
    .local v17, "effect":Landroid/os/VibrationEffect;
    :goto_5
    iget-object v7, v1, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v11, 0x0

    const-string v18, "Shell Command"

    iget-object v10, v1, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    move-object v9, v0

    move-object/from16 v19, v10

    move-object/from16 v10, v17

    move-object/from16 v20, v12

    .end local v12    # "timings":[J
    .local v20, "timings":[J
    move-object/from16 v12, v18

    move-object/from16 v18, v13

    .end local v13    # "timingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v18, "timingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v13, v19

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1978
    nop

    .line 1980
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1978
    return v15

    .line 1980
    .end local v0    # "description":Ljava/lang/String;
    .end local v4    # "repeat":I
    .end local v5    # "amplitudesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    .end local v14    # "opt":Ljava/lang/String;
    .end local v16    # "arg":Ljava/lang/String;
    .end local v17    # "effect":Landroid/os/VibrationEffect;
    .end local v18    # "timingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v20    # "timings":[J
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 1862
    const-string/jumbo v0, "vibrate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1863
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runVibrate()I

    move-result v0

    return v0

    .line 1864
    :cond_0
    const-string/jumbo v0, "waveform"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1865
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runWaveform()I

    move-result v0

    return v0

    .line 1866
    :cond_1
    const-string/jumbo v0, "prebaked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1867
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runPrebaked()I

    move-result v0

    return v0

    .line 1868
    :cond_2
    const-string v0, "cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1869
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    .line 1870
    const/4 v0, 0x0

    return v0

    .line 1872
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/VibratorService$VibratorShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 4

    .line 2017
    const-string v0, "    (Do Not Disturb) mode."

    const-string v1, ""

    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 2018
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string v3, "Vibrator commands:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2019
    const-string v3, "  help"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2020
    const-string v3, "    Prints this help text."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2022
    const-string v3, "  vibrate duration [description]"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2023
    const-string v3, "    Vibrates for duration milliseconds; ignored when device is on DND "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2025
    const-string v3, "  waveform [-d description] [-r index] [-a] duration [amplitude] ..."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    const-string v3, "    Vibrates for durations and amplitudes in list;"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2027
    const-string v3, "    ignored when device is on DND (Do Not Disturb) mode."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    const-string v3, "    If -r is provided, the waveform loops back to the specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2029
    const-string v3, "    index (e.g. 0 loops from the beginning)"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    const-string v3, "    If -a is provided, the command accepts duration-amplitude pairs;"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2031
    const-string v3, "    otherwise, it accepts durations only and alternates off/on"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    const-string v3, "    Duration is in milliseconds; amplitude is a scale of 1-255."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2033
    const-string v3, "  prebaked effect-id [description]"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    const-string v3, "    Vibrates with prebaked effect; ignored when device is on DND "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    const-string v0, "  cancel"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2037
    const-string v0, "    Cancels any active vibration"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    const-string v0, "Common Options:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2039
    const-string v0, "  -f - Force. Ignore Do Not Disturb setting."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2041
    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 2042
    .end local v2    # "pw":Ljava/io/PrintWriter;
    return-void

    .line 2017
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v0

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2041
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    :catchall_1
    move-exception v1

    if-eqz v2, :cond_0

    invoke-static {v0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    throw v1
.end method
