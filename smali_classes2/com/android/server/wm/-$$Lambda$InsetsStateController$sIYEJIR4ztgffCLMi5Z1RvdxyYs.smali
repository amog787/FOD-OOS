.class public final synthetic Lcom/android/server/wm/-$$Lambda$InsetsStateController$sIYEJIR4ztgffCLMi5Z1RvdxyYs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$sIYEJIR4ztgffCLMi5Z1RvdxyYs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$sIYEJIR4ztgffCLMi5Z1RvdxyYs;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$InsetsStateController$sIYEJIR4ztgffCLMi5Z1RvdxyYs;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$sIYEJIR4ztgffCLMi5Z1RvdxyYs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$sIYEJIR4ztgffCLMi5Z1RvdxyYs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/InsetsStateController;->lambda$new$0(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
