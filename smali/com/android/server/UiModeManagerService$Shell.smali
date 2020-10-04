.class Lcom/android/server/UiModeManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Shell"
.end annotation


# static fields
.field public static final NIGHT_MODE_STR_AUTO:Ljava/lang/String; = "auto"

.field public static final NIGHT_MODE_STR_NO:Ljava/lang/String; = "no"

.field public static final NIGHT_MODE_STR_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final NIGHT_MODE_STR_YES:Ljava/lang/String; = "yes"


# instance fields
.field private final mInterface:Landroid/app/IUiModeManager;


# direct methods
.method constructor <init>(Landroid/app/IUiModeManager;)V
    .locals 0
    .param p1, "iface"    # Landroid/app/IUiModeManager;

    .line 1064
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 1065
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    .line 1066
    return-void
.end method

.method static synthetic access$1800(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 1057
    invoke-static {p0}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleNightMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1100
    .local v0, "err":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 1101
    .local v1, "modeStr":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1102
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    .line 1103
    return v2

    .line 1106
    :cond_0
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->strToNightMode(Ljava/lang/String;)I

    move-result v3

    .line 1107
    .local v3, "mode":I
    if-ltz v3, :cond_1

    .line 1108
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v4, v3}, Landroid/app/IUiModeManager;->setNightMode(I)V

    .line 1109
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    .line 1110
    return v2

    .line 1112
    :cond_1
    const-string v2, "Error: mode must be \'yes\', \'no\', or \'auto\'"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    const/4 v2, -0x1

    return v2
.end method

.method private static nightModeToStr(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .line 1126
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1134
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 1128
    :cond_0
    const-string/jumbo v0, "yes"

    return-object v0

    .line 1130
    :cond_1
    const-string/jumbo v0, "no"

    return-object v0

    .line 1132
    :cond_2
    const-string v0, "auto"

    return-object v0
.end method

.method private printCurrentNightMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1119
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1120
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v1

    .line 1121
    .local v1, "currMode":I
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(I)Ljava/lang/String;

    move-result-object v2

    .line 1122
    .local v2, "currModeStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Night mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    return-void
.end method

.method private static strToNightMode(Ljava/lang/String;)I
    .locals 6
    .param p0, "modeStr"    # Ljava/lang/String;

    .line 1139
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xdc1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x1d2e7

    if-eq v0, v1, :cond_2

    const v1, 0x2dddaf

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    .line 1147
    return v3

    .line 1145
    :cond_4
    return v2

    .line 1143
    :cond_5
    return v5

    .line 1141
    :cond_6
    return v4
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 1080
    if-nez p1, :cond_0

    .line 1081
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1085
    :cond_0
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x63f6418

    if-eq v1, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v1, "night"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 1089
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1087
    :cond_3
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleNightMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1091
    :catch_0
    move-exception v1

    .line 1092
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1093
    .local v2, "err":Ljava/io/PrintWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "err":Ljava/io/PrintWriter;
    return v0
.end method

.method public onHelp()V
    .locals 2

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1071
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "UiModeManager service (uimode) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1072
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    const-string v1, "  night [yes|no|auto]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    const-string v1, "    Set or read night mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    return-void
.end method
