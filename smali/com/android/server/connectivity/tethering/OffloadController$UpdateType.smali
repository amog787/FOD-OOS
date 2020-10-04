.class final enum Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;
.super Ljava/lang/Enum;
.source "OffloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/OffloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UpdateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

.field public static final enum FORCE:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

.field public static final enum IF_NEEDED:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 77
    new-instance v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    const/4 v1, 0x0

    const-string v2, "IF_NEEDED"

    invoke-direct {v0, v2, v1}, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->IF_NEEDED:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    new-instance v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    const/4 v2, 0x1

    const-string v3, "FORCE"

    invoke-direct {v0, v3, v2}, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->FORCE:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    sget-object v3, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->IF_NEEDED:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->FORCE:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->$VALUES:[Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 77
    const-class v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->$VALUES:[Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    invoke-virtual {v0}, [Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    return-object v0
.end method
