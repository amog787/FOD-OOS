.class final enum Lcom/android/server/am/ActivityManagerService$KeyLockMode;
.super Ljava/lang/Enum;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "KeyLockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/ActivityManagerService$KeyLockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/ActivityManagerService$KeyLockMode;

.field public static final enum BACK_SWITCH:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

.field public static final enum BASE:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

.field public static final enum FOOT:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

.field public static final enum HOME:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

.field public static final enum NORMAL:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

.field public static final enum POWER:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

.field public static final enum POWER_HOME:Lcom/android/server/am/ActivityManagerService$KeyLockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 22581
    new-instance v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;->NORMAL:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    .line 22582
    new-instance v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    const-string v1, "POWER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;->POWER:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    .line 22583
    new-instance v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    const-string v1, "POWER_HOME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/ActivityManagerService$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;->POWER_HOME:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    .line 22584
    new-instance v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    const-string v1, "HOME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/ActivityManagerService$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;->HOME:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    .line 22585
    new-instance v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    const-string v1, "FOOT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/ActivityManagerService$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;->FOOT:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    .line 22586
    new-instance v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    const-string v1, "BACK_SWITCH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/am/ActivityManagerService$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;->BACK_SWITCH:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    .line 22587
    new-instance v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    const-string v1, "BASE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/ActivityManagerService$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;->BASE:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    .line 22580
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    sget-object v9, Lcom/android/server/am/ActivityManagerService$KeyLockMode;->NORMAL:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    aput-object v9, v1, v2

    sget-object v2, Lcom/android/server/am/ActivityManagerService$KeyLockMode;->POWER:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/ActivityManagerService$KeyLockMode;->POWER_HOME:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/am/ActivityManagerService$KeyLockMode;->HOME:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/am/ActivityManagerService$KeyLockMode;->FOOT:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/am/ActivityManagerService$KeyLockMode;->BACK_SWITCH:Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/android/server/am/ActivityManagerService$KeyLockMode;->$VALUES:[Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22580
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$KeyLockMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22580
    const-class v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/ActivityManagerService$KeyLockMode;
    .locals 1

    .line 22580
    sget-object v0, Lcom/android/server/am/ActivityManagerService$KeyLockMode;->$VALUES:[Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    invoke-virtual {v0}, [Lcom/android/server/am/ActivityManagerService$KeyLockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/ActivityManagerService$KeyLockMode;

    return-object v0
.end method
