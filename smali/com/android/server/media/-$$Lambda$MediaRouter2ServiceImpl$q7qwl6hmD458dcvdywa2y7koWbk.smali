.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$q7qwl6hmD458dcvdywa2y7koWbk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$q7qwl6hmD458dcvdywa2y7koWbk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$q7qwl6hmD458dcvdywa2y7koWbk;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$q7qwl6hmD458dcvdywa2y7koWbk;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$q7qwl6hmD458dcvdywa2y7koWbk;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$q7qwl6hmD458dcvdywa2y7koWbk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    check-cast p2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$registerRouter2Locked$2(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V

    return-void
.end method
