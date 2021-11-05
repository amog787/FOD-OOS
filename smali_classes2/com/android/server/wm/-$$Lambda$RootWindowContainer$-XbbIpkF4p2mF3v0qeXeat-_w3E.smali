.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-XbbIpkF4p2mF3v0qeXeat-_w3E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-XbbIpkF4p2mF3v0qeXeat-_w3E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-XbbIpkF4p2mF3v0qeXeat-_w3E;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-XbbIpkF4p2mF3v0qeXeat-_w3E;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-XbbIpkF4p2mF3v0qeXeat-_w3E;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-XbbIpkF4p2mF3v0qeXeat-_w3E;

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

    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$performSurfacePlacementNoTrace$8(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
