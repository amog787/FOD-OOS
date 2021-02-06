.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$QjNtYzBoevRHPhQzwu5fh58MK0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$QjNtYzBoevRHPhQzwu5fh58MK0E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$QjNtYzBoevRHPhQzwu5fh58MK0E;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$QjNtYzBoevRHPhQzwu5fh58MK0E;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$QjNtYzBoevRHPhQzwu5fh58MK0E;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$QjNtYzBoevRHPhQzwu5fh58MK0E;

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

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityStack;->lambda$QjNtYzBoevRHPhQzwu5fh58MK0E(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    return-void
.end method
