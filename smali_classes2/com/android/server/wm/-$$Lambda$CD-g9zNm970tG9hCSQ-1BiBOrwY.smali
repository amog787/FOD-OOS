.class public final synthetic Lcom/android/server/wm/-$$Lambda$CD-g9zNm970tG9hCSQ-1BiBOrwY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$CD-g9zNm970tG9hCSQ-1BiBOrwY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$CD-g9zNm970tG9hCSQ-1BiBOrwY;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$CD-g9zNm970tG9hCSQ-1BiBOrwY;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$CD-g9zNm970tG9hCSQ-1BiBOrwY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$CD-g9zNm970tG9hCSQ-1BiBOrwY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result p1

    return p1
.end method
