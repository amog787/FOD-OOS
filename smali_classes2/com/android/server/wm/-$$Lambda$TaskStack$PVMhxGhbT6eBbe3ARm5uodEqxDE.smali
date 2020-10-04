.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskStack$PVMhxGhbT6eBbe3ARm5uodEqxDE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$PVMhxGhbT6eBbe3ARm5uodEqxDE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$TaskStack$PVMhxGhbT6eBbe3ARm5uodEqxDE;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$TaskStack$PVMhxGhbT6eBbe3ARm5uodEqxDE;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$TaskStack$PVMhxGhbT6eBbe3ARm5uodEqxDE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$PVMhxGhbT6eBbe3ARm5uodEqxDE;

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

    invoke-static {p1}, Lcom/android/server/wm/TaskStack;->lambda$onConfigurationChanged$1(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
