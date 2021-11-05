.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$003OcZZ5xaDYOonhMlHDzkahjlE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/HeptConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$003OcZZ5xaDYOonhMlHDzkahjlE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$003OcZZ5xaDYOonhMlHDzkahjlE;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$003OcZZ5xaDYOonhMlHDzkahjlE;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$003OcZZ5xaDYOonhMlHDzkahjlE;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$003OcZZ5xaDYOonhMlHDzkahjlE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    move-object v0, p1

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v3, p3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v5, p4

    check-cast v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-object v6, p5

    check-cast v6, Landroid/media/RoutingSessionInfo;

    move-object v7, p6

    check-cast v7, Landroid/media/MediaRoute2Info;

    move-object/from16 v8, p7

    check-cast v8, Landroid/os/Bundle;

    invoke-static/range {v0 .. v8}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$requestCreateSessionWithRouter2Locked$8(Ljava/lang/Object;JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    return-void
.end method
