.class Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;
.super Landroid/os/ShellCommand;
.source "TimeZoneDetectorShellCommand.java"


# instance fields
.field private final mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V
    .locals 0
    .param p1, "timeZoneDetectorService"    # Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 29
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 31
    return-void
.end method

.method private runSuggestManualTimeZone()I
    .locals 6

    .line 77
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 79
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 81
    .local v1, "suggestion":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    :goto_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 82
    const-string v3, "--suggestion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-static {p0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 85
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    return v2

    .line 89
    :cond_1
    if-nez v1, :cond_2

    .line 90
    const-string v3, "Error: suggestion not specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    return v2

    .line 93
    :cond_2
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v3, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)V

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Suggestion "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " injected."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const/4 v2, 0x0

    return v2

    .line 96
    .end local v1    # "suggestion":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .end local v4    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    return v2
.end method

.method private runSuggestTelephonyTimeZone()I
    .locals 6

    .line 51
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 53
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 55
    .local v1, "suggestion":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    :goto_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 56
    const-string v3, "--suggestion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-static {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 59
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    return v2

    .line 63
    :cond_1
    if-nez v1, :cond_2

    .line 64
    const-string v3, "Error: suggestion not specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    return v2

    .line 67
    :cond_2
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v3, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Suggestion "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " injected."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v2, 0x0

    return v2

    .line 70
    .end local v1    # "suggestion":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .end local v4    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 35
    if-nez p1, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 39
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5f15f000

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x2390c53c

    if-eq v1, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "suggest_telephony_time_zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "suggest_manual_time_zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 43
    :cond_4
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestManualTimeZone()I

    move-result v0

    return v0

    .line 41
    :cond_5
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestTelephonyTimeZone()I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 105
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Time Zone Detector (time_zone_detector) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v1, "  suggest_telephony_time_zone"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v1, "    --suggestion <telephony suggestion opts>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v1, "  suggest_manual_time_zone"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    const-string v1, "    --suggestion <manual suggestion opts>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 113
    invoke-static {v0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 114
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 115
    invoke-static {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 116
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 117
    return-void
.end method
