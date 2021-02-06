.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$kVr85jPfx5uHphlz0VIIyn7eEnw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$kVr85jPfx5uHphlz0VIIyn7eEnw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$kVr85jPfx5uHphlz0VIIyn7eEnw;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$kVr85jPfx5uHphlz0VIIyn7eEnw;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$kVr85jPfx5uHphlz0VIIyn7eEnw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$kVr85jPfx5uHphlz0VIIyn7eEnw;

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

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->lambda$onOverlayChanged$13(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
