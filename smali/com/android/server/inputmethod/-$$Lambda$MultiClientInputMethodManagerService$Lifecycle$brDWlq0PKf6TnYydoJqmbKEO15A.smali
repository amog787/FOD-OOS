.class public final synthetic Lcom/android/server/inputmethod/-$$Lambda$MultiClientInputMethodManagerService$Lifecycle$brDWlq0PKf6TnYydoJqmbKEO15A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/inputmethod/-$$Lambda$MultiClientInputMethodManagerService$Lifecycle$brDWlq0PKf6TnYydoJqmbKEO15A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/inputmethod/-$$Lambda$MultiClientInputMethodManagerService$Lifecycle$brDWlq0PKf6TnYydoJqmbKEO15A;

    invoke-direct {v0}, Lcom/android/server/inputmethod/-$$Lambda$MultiClientInputMethodManagerService$Lifecycle$brDWlq0PKf6TnYydoJqmbKEO15A;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/-$$Lambda$MultiClientInputMethodManagerService$Lifecycle$brDWlq0PKf6TnYydoJqmbKEO15A;->INSTANCE:Lcom/android/server/inputmethod/-$$Lambda$MultiClientInputMethodManagerService$Lifecycle$brDWlq0PKf6TnYydoJqmbKEO15A;

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

    invoke-static {p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;->lambda$new$0(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
