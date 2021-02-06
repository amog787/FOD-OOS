.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorService;
.super Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;
.source "TimeZoneDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeZoneDetectorService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "timeZoneDetectorStrategy"    # Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 91
    invoke-direct {p0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;-><init>()V

    .line 92
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mHandler:Landroid/os/Handler;

    .line 94
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 95
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/android/server/timezonedetector/TimeZoneDetectorService;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 44
    invoke-static {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->create(Landroid/content/Context;)Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    move-result-object v0

    return-object v0
.end method

.method private static create(Landroid/content/Context;)Lcom/android/server/timezonedetector/TimeZoneDetectorService;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    nop

    .line 72
    invoke-static {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->create(Landroid/content/Context;)Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    move-result-object v0

    .line 74
    .local v0, "timeZoneDetectorStrategy":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 75
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V

    .line 78
    .local v2, "service":Lcom/android/server/timezonedetector/TimeZoneDetectorService;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 79
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    nop

    .line 80
    const-string v4, "auto_time_zone"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/timezonedetector/TimeZoneDetectorService$1;

    invoke-direct {v5, v1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$1;-><init>(Landroid/os/Handler;Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    .line 79
    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    return-object v2
.end method

.method private enforceSuggestManualTimeZonePermission()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SUGGEST_MANUAL_TIME_AND_ZONE"

    const-string v2, "suggest manual time and time zone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method private enforceSuggestTelephonyTimeZonePermission()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SUGGEST_TELEPHONY_TIME_AND_ZONE"

    const-string v2, "suggest telephony time and time zone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "TimeZoneDetectorService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v0, p2, p3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public handleAutoTimeZoneDetectionChanged()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/-$$Lambda$YxXJMUW4yEyBSw8jCvXmZTpthE8;

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/-$$Lambda$YxXJMUW4yEyBSw8jCvXmZTpthE8;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method

.method public synthetic lambda$suggestManualTimeZone$0$TimeZoneDetectorService(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)V
    .locals 1
    .param p1, "timeZoneSuggestion"    # Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    .line 102
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)V

    return-void
.end method

.method public synthetic lambda$suggestTelephonyTimeZone$1$TimeZoneDetectorService(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .locals 1
    .param p1, "timeZoneSuggestion"    # Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 110
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 143
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 145
    return-void
.end method

.method public suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)V
    .locals 2
    .param p1, "timeZoneSuggestion"    # Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    .line 99
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceSuggestManualTimeZonePermission()V

    .line 100
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timezonedetector/-$$Lambda$TimeZoneDetectorService$UdeBqzyBZX1S4jHLM7d2cKvE_-U;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/-$$Lambda$TimeZoneDetectorService$UdeBqzyBZX1S4jHLM7d2cKvE_-U;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

.method public suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .locals 2
    .param p1, "timeZoneSuggestion"    # Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 107
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceSuggestTelephonyTimeZonePermission()V

    .line 108
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timezonedetector/-$$Lambda$TimeZoneDetectorService$fVU6C2loDoPZ5MLRbaxmXaLRy_s;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/-$$Lambda$TimeZoneDetectorService$fVU6C2loDoPZ5MLRbaxmXaLRy_s;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method
