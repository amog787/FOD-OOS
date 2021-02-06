.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$VIuWlCdKwIo4qqRlevMLniedZ7o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$VIuWlCdKwIo4qqRlevMLniedZ7o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$VIuWlCdKwIo4qqRlevMLniedZ7o;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$VIuWlCdKwIo4qqRlevMLniedZ7o;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$VIuWlCdKwIo4qqRlevMLniedZ7o;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$VIuWlCdKwIo4qqRlevMLniedZ7o;

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

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Landroid/graphics/Rect;

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityStack;->lambda$VIuWlCdKwIo4qqRlevMLniedZ7o(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    return-void
.end method
