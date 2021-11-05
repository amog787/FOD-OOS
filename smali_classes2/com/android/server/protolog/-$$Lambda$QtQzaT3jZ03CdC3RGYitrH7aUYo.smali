.class public final synthetic Lcom/android/server/protolog/-$$Lambda$QtQzaT3jZ03CdC3RGYitrH7aUYo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/protolog/-$$Lambda$QtQzaT3jZ03CdC3RGYitrH7aUYo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/protolog/-$$Lambda$QtQzaT3jZ03CdC3RGYitrH7aUYo;

    invoke-direct {v0}, Lcom/android/server/protolog/-$$Lambda$QtQzaT3jZ03CdC3RGYitrH7aUYo;-><init>()V

    sput-object v0, Lcom/android/server/protolog/-$$Lambda$QtQzaT3jZ03CdC3RGYitrH7aUYo;->INSTANCE:Lcom/android/server/protolog/-$$Lambda$QtQzaT3jZ03CdC3RGYitrH7aUYo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/server/protolog/ProtoLog$Cache;->update()V

    return-void
.end method
