.class public final synthetic Lcom/android/server/wm/-$$Lambda$oZvG727evJMxIwK1im7QJjcltfo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$oZvG727evJMxIwK1im7QJjcltfo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$oZvG727evJMxIwK1im7QJjcltfo;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$oZvG727evJMxIwK1im7QJjcltfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$oZvG727evJMxIwK1im7QJjcltfo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$oZvG727evJMxIwK1im7QJjcltfo;

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

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Landroid/graphics/Rect;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    return-void
.end method
