.class public final enum Lcom/android/server/backup/restore/RestorePolicy;
.super Ljava/lang/Enum;
.source "RestorePolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/backup/restore/RestorePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/backup/restore/RestorePolicy;

.field public static final enum ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

.field public static final enum ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

.field public static final enum IGNORE:Lcom/android/server/backup/restore/RestorePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/android/server/backup/restore/RestorePolicy;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/restore/RestorePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 24
    new-instance v0, Lcom/android/server/backup/restore/RestorePolicy;

    const-string v1, "ACCEPT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/backup/restore/RestorePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    .line 25
    new-instance v0, Lcom/android/server/backup/restore/RestorePolicy;

    const-string v1, "ACCEPT_IF_APK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/backup/restore/RestorePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    .line 22
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/backup/restore/RestorePolicy;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/backup/restore/RestorePolicy;->$VALUES:[Lcom/android/server/backup/restore/RestorePolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/backup/restore/RestorePolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/android/server/backup/restore/RestorePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/restore/RestorePolicy;

    return-object v0
.end method

.method public static values()[Lcom/android/server/backup/restore/RestorePolicy;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->$VALUES:[Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0}, [Lcom/android/server/backup/restore/RestorePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/backup/restore/RestorePolicy;

    return-object v0
.end method
