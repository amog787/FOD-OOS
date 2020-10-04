.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$RlRzlI_mvPut3IP0uoIxY4DU_c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method public synthetic constructor <init>(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$RlRzlI_mvPut3IP0uoIxY4DU_c0;->f$0:Landroid/util/proto/ProtoOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$RlRzlI_mvPut3IP0uoIxY4DU_c0;->f$0:Landroid/util/proto/ProtoOutputStream;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$writeToProto$11(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
