.class public final enum Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;
.super Ljava/lang/Enum;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlarmAlignmentReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

.field public static final enum DOZE_READDALARMLOCKED:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

.field public static final enum DOZE_SETALARM:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

.field public static final enum FROZEN_SETALARM:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

.field public static final enum FROZEN_TRIGGERALARM:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 734
    new-instance v0, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    const/4 v1, 0x0

    const-string v2, "DOZE_READDALARMLOCKED"

    invoke-direct {v0, v2, v1}, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->DOZE_READDALARMLOCKED:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    .line 735
    new-instance v0, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    const/4 v2, 0x1

    const-string v3, "DOZE_SETALARM"

    invoke-direct {v0, v3, v2}, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->DOZE_SETALARM:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    .line 736
    new-instance v0, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    const/4 v3, 0x2

    const-string v4, "FROZEN_SETALARM"

    invoke-direct {v0, v4, v3}, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->FROZEN_SETALARM:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    .line 737
    new-instance v0, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    const/4 v4, 0x3

    const-string v5, "FROZEN_TRIGGERALARM"

    invoke-direct {v0, v5, v4}, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->FROZEN_TRIGGERALARM:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    .line 733
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    sget-object v5, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->DOZE_READDALARMLOCKED:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->DOZE_SETALARM:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->FROZEN_SETALARM:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->FROZEN_TRIGGERALARM:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->$VALUES:[Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 733
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 733
    const-class v0, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    return-object v0
.end method

.method public static values()[Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;
    .locals 1

    .line 733
    sget-object v0, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->$VALUES:[Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    invoke-virtual {v0}, [Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    return-object v0
.end method
