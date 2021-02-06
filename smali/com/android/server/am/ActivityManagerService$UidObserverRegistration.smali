.class final Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UidObserverRegistration"
.end annotation


# static fields
.field private static ORIG_ENUMS:[I

.field private static PROTO_ENUMS:[I


# instance fields
.field final cutpoint:I

.field final lastProcStates:Landroid/util/SparseIntArray;

.field mMaxDispatchTime:I

.field mSlowDispatchCount:I

.field final pkg:Ljava/lang/String;

.field final uid:I

.field final which:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1688
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->ORIG_ENUMS:[I

    .line 1694
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->PROTO_ENUMS:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x8
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x4
        0x2
        0x1
    .end array-data
.end method

.method constructor <init>(ILjava/lang/String;II)V
    .locals 1
    .param p1, "_uid"    # I
    .param p2, "_pkg"    # Ljava/lang/String;
    .param p3, "_which"    # I
    .param p4, "_cutpoint"    # I

    .line 1701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1702
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->uid:I

    .line 1703
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->pkg:Ljava/lang/String;

    .line 1704
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->which:I

    .line 1705
    iput p4, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->cutpoint:I

    .line 1706
    if-ltz p4, :cond_0

    .line 1707
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1709
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    .line 1711
    :goto_0
    return-void
.end method


# virtual methods
.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 13
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1714
    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 1715
    .local v8, "token":J
    iget v1, v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->uid:I

    const-wide v10, 0x10500000001L

    invoke-virtual {p1, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1716
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->pkg:Ljava/lang/String;

    const-wide v2, 0x10900000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1717
    iget v4, v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->which:I

    sget-object v5, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->ORIG_ENUMS:[I

    sget-object v6, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->PROTO_ENUMS:[I

    const-wide v2, 0x20e00000003L

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    .line 1719
    iget v1, v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->cutpoint:I

    const-wide v2, 0x10500000004L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1720
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_0

    .line 1721
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1722
    .local v1, "NI":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1723
    const-wide v3, 0x20b00000005L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1724
    .local v3, "pToken":J
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1725
    const-wide v5, 0x10500000002L

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-virtual {p1, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1726
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1722
    .end local v3    # "pToken":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1729
    .end local v1    # "NI":I
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1730
    return-void
.end method
