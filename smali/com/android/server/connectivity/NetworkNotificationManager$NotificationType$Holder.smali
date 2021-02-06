.class Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;
.super Ljava/lang/Object;
.source "NetworkNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sIdToTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;->sIdToTypeMap:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .line 66
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;->sIdToTypeMap:Landroid/util/SparseArray;

    return-object v0
.end method
