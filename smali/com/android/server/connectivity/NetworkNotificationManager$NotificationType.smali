.class public final enum Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
.super Ljava/lang/Enum;
.source "NetworkNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

.field public static final enum LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

.field public static final enum NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

.field public static final enum NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

.field public static final enum PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

.field public static final enum PRIVATE_DNS_BROKEN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

.field public static final enum SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;


# instance fields
.field public final eventId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 52
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const-string v1, "LOST_INTERNET"

    const/4 v2, 0x0

    const/16 v3, 0x2e6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 53
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const-string v1, "NETWORK_SWITCH"

    const/4 v3, 0x1

    const/16 v4, 0x2e7

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 54
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const-string v1, "NO_INTERNET"

    const/4 v4, 0x2

    const/16 v5, 0x2e5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 55
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const-string v1, "PARTIAL_CONNECTIVITY"

    const/4 v5, 0x3

    const/16 v6, 0x2e9

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 56
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const-string v1, "SIGN_IN"

    const/4 v6, 0x4

    const/16 v7, 0x2e4

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 57
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const-string v1, "PRIVATE_DNS_BROKEN"

    const/4 v7, 0x5

    const/16 v8, 0x2ea

    invoke-direct {v0, v1, v7, v8}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PRIVATE_DNS_BROKEN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 51
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    sget-object v8, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    aput-object v8, v1, v2

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->$VALUES:[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "eventId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->eventId:I

    .line 63
    invoke-static {}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;->access$000()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public static getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .locals 1
    .param p0, "id"    # I

    .line 71
    invoke-static {}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;->access$000()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->$VALUES:[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v0}, [Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    return-object v0
.end method
