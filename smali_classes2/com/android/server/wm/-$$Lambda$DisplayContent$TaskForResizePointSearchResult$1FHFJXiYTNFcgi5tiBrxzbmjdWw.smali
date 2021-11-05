.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskForResizePointSearchResult$1FHFJXiYTNFcgi5tiBrxzbmjdWw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskForResizePointSearchResult$1FHFJXiYTNFcgi5tiBrxzbmjdWw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskForResizePointSearchResult$1FHFJXiYTNFcgi5tiBrxzbmjdWw;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskForResizePointSearchResult$1FHFJXiYTNFcgi5tiBrxzbmjdWw;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskForResizePointSearchResult$1FHFJXiYTNFcgi5tiBrxzbmjdWw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$TaskForResizePointSearchResult$1FHFJXiYTNFcgi5tiBrxzbmjdWw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    check-cast p2, Lcom/android/server/wm/Task;

    invoke-static {p1, p2}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->lambda$1FHFJXiYTNFcgi5tiBrxzbmjdWw(Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;Lcom/android/server/wm/Task;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
