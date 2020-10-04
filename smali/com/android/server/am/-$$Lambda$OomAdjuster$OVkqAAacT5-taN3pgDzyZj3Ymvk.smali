.class public final synthetic Lcom/android/server/am/-$$Lambda$OomAdjuster$OVkqAAacT5-taN3pgDzyZj3Ymvk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$OomAdjuster$OVkqAAacT5-taN3pgDzyZj3Ymvk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$OomAdjuster$OVkqAAacT5-taN3pgDzyZj3Ymvk;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$OomAdjuster$OVkqAAacT5-taN3pgDzyZj3Ymvk;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$OomAdjuster$OVkqAAacT5-taN3pgDzyZj3Ymvk;->INSTANCE:Lcom/android/server/am/-$$Lambda$OomAdjuster$OVkqAAacT5-taN3pgDzyZj3Ymvk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->lambda$new$0(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
