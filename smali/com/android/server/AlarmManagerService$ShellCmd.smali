.class Lcom/android/server/AlarmManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .line 5217
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "x1"    # Lcom/android/server/AlarmManagerService$1;

    .line 5217
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method getBinderService()Landroid/app/IAlarmManager;
    .locals 1

    .line 5220
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$4100(Lcom/android/server/AlarmManagerService;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    return-object v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 5225
    if-nez p1, :cond_0

    .line 5226
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 5229
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 5231
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x519f2558

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_3

    const v3, 0x7895dd04

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v2, "set-timezone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "set-time"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_4

    .line 5240
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 5236
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 5237
    .local v2, "tz":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 5238
    return v5

    .line 5233
    .end local v2    # "tz":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 5234
    .local v2, "millis":J
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/app/IAlarmManager;->setTime(J)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_6

    move v1, v5

    :cond_6
    return v1

    .line 5242
    .end local v2    # "millis":J
    :catch_0
    move-exception v2

    .line 5243
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5245
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public onHelp()V
    .locals 2

    .line 5250
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 5251
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Alarm manager service (alarm) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5252
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5253
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5254
    const-string v1, "  set-time TIME"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5255
    const-string v1, "    Set the system clock time to TIME where TIME is milliseconds"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5256
    const-string v1, "    since the Epoch."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5257
    const-string v1, "  set-timezone TZ"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5258
    const-string v1, "    Set the system timezone to TZ where TZ is an Olson id."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5259
    return-void
.end method
