.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$v0lzUd5lG9IZWCroURxmaEQL7Qs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$v0lzUd5lG9IZWCroURxmaEQL7Qs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$v0lzUd5lG9IZWCroURxmaEQL7Qs;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$v0lzUd5lG9IZWCroURxmaEQL7Qs;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$v0lzUd5lG9IZWCroURxmaEQL7Qs;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$v0lzUd5lG9IZWCroURxmaEQL7Qs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    check-cast p2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$transferToRouteWithRouter2Locked$11(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    return-void
.end method
