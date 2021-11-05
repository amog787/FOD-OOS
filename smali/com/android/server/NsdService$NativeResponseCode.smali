.class final Lcom/android/server/NsdService$NativeResponseCode;
.super Ljava/lang/Object;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NativeResponseCode"
.end annotation


# static fields
.field private static final CODE_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICE_DISCOVERY_FAILED:I = 0x25a

.field public static final SERVICE_FOUND:I = 0x25b

.field public static final SERVICE_GET_ADDR_FAILED:I = 0x263

.field public static final SERVICE_GET_ADDR_SUCCESS:I = 0x264

.field public static final SERVICE_LOST:I = 0x25c

.field public static final SERVICE_REGISTERED:I = 0x25e

.field public static final SERVICE_REGISTRATION_FAILED:I = 0x25d

.field public static final SERVICE_RESOLUTION_FAILED:I = 0x25f

.field public static final SERVICE_RESOLVED:I = 0x260

.field public static final SERVICE_UPDATED:I = 0x261

.field public static final SERVICE_UPDATE_FAILED:I = 0x262


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 614
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/NsdService$NativeResponseCode;->CODE_NAMES:Landroid/util/SparseArray;

    .line 616
    const/16 v1, 0x25a

    const-string v2, "SERVICE_DISCOVERY_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 617
    sget-object v0, Lcom/android/server/NsdService$NativeResponseCode;->CODE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x25b

    const-string v2, "SERVICE_FOUND"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 618
    sget-object v0, Lcom/android/server/NsdService$NativeResponseCode;->CODE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x25c

    const-string v2, "SERVICE_LOST"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 619
    sget-object v0, Lcom/android/server/NsdService$NativeResponseCode;->CODE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x25d

    const-string v2, "SERVICE_REGISTRATION_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 620
    sget-object v0, Lcom/android/server/NsdService$NativeResponseCode;->CODE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x25e

    const-string v2, "SERVICE_REGISTERED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 621
    sget-object v0, Lcom/android/server/NsdService$NativeResponseCode;->CODE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x25f

    const-string v2, "SERVICE_RESOLUTION_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 622
    sget-object v0, Lcom/android/server/NsdService$NativeResponseCode;->CODE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x260

    const-string v2, "SERVICE_RESOLVED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 623
    sget-object v0, Lcom/android/server/NsdService$NativeResponseCode;->CODE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x261

    const-string v2, "SERVICE_UPDATED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 624
    sget-object v0, Lcom/android/server/NsdService$NativeResponseCode;->CODE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x262

    const-string v2, "SERVICE_UPDATE_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 625
    sget-object v0, Lcom/android/server/NsdService$NativeResponseCode;->CODE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x263

    const-string v2, "SERVICE_GET_ADDR_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 626
    sget-object v0, Lcom/android/server/NsdService$NativeResponseCode;->CODE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x264

    const-string v2, "SERVICE_GET_ADDR_SUCCESS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 627
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static nameOf(I)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I

    .line 630
    sget-object v0, Lcom/android/server/NsdService$NativeResponseCode;->CODE_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 631
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 632
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 634
    :cond_0
    return-object v0
.end method
