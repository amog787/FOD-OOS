.class public final enum Lcom/android/server/protolog/ProtoLogImpl$LogLevel;
.super Ljava/lang/Enum;
.source "ProtoLogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/protolog/ProtoLogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/protolog/ProtoLogImpl$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

.field public static final enum DEBUG:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

.field public static final enum ERROR:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

.field public static final enum INFO:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

.field public static final enum VERBOSE:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

.field public static final enum WARN:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

.field public static final enum WTF:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 163
    new-instance v0, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->DEBUG:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    new-instance v0, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    const-string v1, "VERBOSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->VERBOSE:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    new-instance v0, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    const-string v1, "INFO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->INFO:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    new-instance v0, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    const-string v1, "WARN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->WARN:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    new-instance v0, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    const-string v1, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->ERROR:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    new-instance v0, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    const-string v1, "WTF"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->WTF:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    .line 161
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    sget-object v8, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->DEBUG:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    aput-object v8, v1, v2

    sget-object v2, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->VERBOSE:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->INFO:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->WARN:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->ERROR:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->$VALUES:[Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/protolog/ProtoLogImpl$LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 161
    const-class v0, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/android/server/protolog/ProtoLogImpl$LogLevel;
    .locals 1

    .line 161
    sget-object v0, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->$VALUES:[Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    invoke-virtual {v0}, [Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    return-object v0
.end method
