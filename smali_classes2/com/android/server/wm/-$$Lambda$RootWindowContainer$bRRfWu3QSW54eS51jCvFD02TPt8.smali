.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$bRRfWu3QSW54eS51jCvFD02TPt8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$bRRfWu3QSW54eS51jCvFD02TPt8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$bRRfWu3QSW54eS51jCvFD02TPt8;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$bRRfWu3QSW54eS51jCvFD02TPt8;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$bRRfWu3QSW54eS51jCvFD02TPt8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$bRRfWu3QSW54eS51jCvFD02TPt8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Landroid/content/Intent;

    check-cast p5, Landroid/content/ComponentName;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/wm/RootWindowContainer;->lambda$bRRfWu3QSW54eS51jCvFD02TPt8(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method
