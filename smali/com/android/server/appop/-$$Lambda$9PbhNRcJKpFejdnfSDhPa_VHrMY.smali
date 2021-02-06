.class public final synthetic Lcom/android/server/appop/-$$Lambda$9PbhNRcJKpFejdnfSDhPa_VHrMY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/DecConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/appop/-$$Lambda$9PbhNRcJKpFejdnfSDhPa_VHrMY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/appop/-$$Lambda$9PbhNRcJKpFejdnfSDhPa_VHrMY;

    invoke-direct {v0}, Lcom/android/server/appop/-$$Lambda$9PbhNRcJKpFejdnfSDhPa_VHrMY;-><init>()V

    sput-object v0, Lcom/android/server/appop/-$$Lambda$9PbhNRcJKpFejdnfSDhPa_VHrMY;->INSTANCE:Lcom/android/server/appop/-$$Lambda$9PbhNRcJKpFejdnfSDhPa_VHrMY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    move-object v0, p1

    check-cast v0, Lcom/android/server/appop/HistoricalRegistry;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/String;

    move-object/from16 v4, p5

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v5, p6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v6, p7

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v8, p8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v10, p9

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v11, p10

    check-cast v11, Landroid/os/RemoteCallback;

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/appop/HistoricalRegistry;->getHistoricalOps(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJILandroid/os/RemoteCallback;)V

    return-void
.end method
