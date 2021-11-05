.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$MagnificationController$UxSkaR2uzdX0ekJv4Wtodc8tuMY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$MagnificationController$UxSkaR2uzdX0ekJv4Wtodc8tuMY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$MagnificationController$UxSkaR2uzdX0ekJv4Wtodc8tuMY;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$MagnificationController$UxSkaR2uzdX0ekJv4Wtodc8tuMY;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$MagnificationController$UxSkaR2uzdX0ekJv4Wtodc8tuMY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$MagnificationController$UxSkaR2uzdX0ekJv4Wtodc8tuMY;

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

    check-cast p1, Lcom/android/server/accessibility/MagnificationController;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/accessibility/MagnificationController;->lambda$UxSkaR2uzdX0ekJv4Wtodc8tuMY(Lcom/android/server/accessibility/MagnificationController;Z)V

    return-void
.end method
