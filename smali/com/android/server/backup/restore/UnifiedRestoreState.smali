.class public final enum Lcom/android/server/backup/restore/UnifiedRestoreState;
.super Ljava/lang/Enum;
.source "UnifiedRestoreState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/backup/restore/UnifiedRestoreState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum INITIAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum RESTORE_FULL:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum RESTORE_KEYVALUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lcom/android/server/backup/restore/UnifiedRestoreState;

    const/4 v1, 0x0

    const-string v2, "INITIAL"

    invoke-direct {v0, v2, v1}, Lcom/android/server/backup/restore/UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 24
    new-instance v0, Lcom/android/server/backup/restore/UnifiedRestoreState;

    const/4 v2, 0x1

    const-string v3, "RUNNING_QUEUE"

    invoke-direct {v0, v3, v2}, Lcom/android/server/backup/restore/UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 25
    new-instance v0, Lcom/android/server/backup/restore/UnifiedRestoreState;

    const/4 v3, 0x2

    const-string v4, "RESTORE_KEYVALUE"

    invoke-direct {v0, v4, v3}, Lcom/android/server/backup/restore/UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 26
    new-instance v0, Lcom/android/server/backup/restore/UnifiedRestoreState;

    const/4 v4, 0x3

    const-string v5, "RESTORE_FULL"

    invoke-direct {v0, v5, v4}, Lcom/android/server/backup/restore/UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 27
    new-instance v0, Lcom/android/server/backup/restore/UnifiedRestoreState;

    const/4 v5, 0x4

    const-string v6, "RESTORE_FINISHED"

    invoke-direct {v0, v6, v5}, Lcom/android/server/backup/restore/UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 28
    new-instance v0, Lcom/android/server/backup/restore/UnifiedRestoreState;

    const/4 v6, 0x5

    const-string v7, "FINAL"

    invoke-direct {v0, v7, v6}, Lcom/android/server/backup/restore/UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/server/backup/restore/UnifiedRestoreState;

    sget-object v7, Lcom/android/server/backup/restore/UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->$VALUES:[Lcom/android/server/backup/restore/UnifiedRestoreState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/backup/restore/UnifiedRestoreState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/restore/UnifiedRestoreState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/backup/restore/UnifiedRestoreState;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->$VALUES:[Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v0}, [Lcom/android/server/backup/restore/UnifiedRestoreState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/backup/restore/UnifiedRestoreState;

    return-object v0
.end method
