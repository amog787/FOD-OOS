.class public final synthetic Lcom/android/server/broadcastradio/-$$Lambda$h9uu6awtPxlZjabQhUCMBWQXSFM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/broadcastradio/-$$Lambda$h9uu6awtPxlZjabQhUCMBWQXSFM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/-$$Lambda$h9uu6awtPxlZjabQhUCMBWQXSFM;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/-$$Lambda$h9uu6awtPxlZjabQhUCMBWQXSFM;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/-$$Lambda$h9uu6awtPxlZjabQhUCMBWQXSFM;->INSTANCE:Lcom/android/server/broadcastradio/-$$Lambda$h9uu6awtPxlZjabQhUCMBWQXSFM;

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

    check-cast p1, Landroid/hardware/radio/RadioManager$ModuleProperties;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    move-result p1

    return p1
.end method
