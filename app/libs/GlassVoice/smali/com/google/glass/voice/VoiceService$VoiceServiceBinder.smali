.class public Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
.super Lcom/google/glass/voice/IVoiceService$Stub;
.source "VoiceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoiceServiceBinder"
.end annotation


# instance fields
.field private final lastSetConfigListenerTag:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/glass/voice/VoiceService;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/VoiceService;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-direct {p0}, Lcom/google/glass/voice/IVoiceService$Stub;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->lastSetConfigListenerTag:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 51
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$000(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->register(Landroid/os/IInterface;)Z

    .line 54
    return-void
.end method

.method public addVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 1
    .parameter "voiceInputCallback"

    .prologue
    .line 112
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$200(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->register(Landroid/os/IInterface;)Z

    .line 115
    return-void
.end method

.method public endpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$300(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->endpointNetworkRecognizer()V

    .line 127
    return-void
.end method

.method getVoiceService()Lcom/google/glass/voice/VoiceService;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    return-object v0
.end method

.method public loadConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "configToLoad"

    .prologue
    .line 90
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$300(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceEngine;->loadConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 93
    return-void
.end method

.method public reloadConfig(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .parameter "configToLoad"
    .parameter "configToUnload"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->loadConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 98
    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {p0, p2}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->unloadConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 101
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 58
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$000(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->unregister(Landroid/os/IInterface;)Z

    .line 61
    return-void
.end method

.method public removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 1
    .parameter "voiceInputCallback"

    .prologue
    .line 119
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$200(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->unregister(Landroid/os/IInterface;)Z

    .line 122
    return-void
.end method

.method public setConfig(Lcom/google/glass/voice/VoiceConfig;Ljava/lang/String;)V
    .locals 4
    .parameter "config"
    .parameter "listenerTag"

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->lastSetConfigListenerTag:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Ignoring setConfig(OFF) because a more recent listener is using VoiceService"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$200(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->clear()V

    .line 80
    :goto_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$300(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceEngine;->isConfigIdentical(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Ignoring duplicate call setConfig(%s)."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->lastSetConfigListenerTag:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$300(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceEngine;->setConfig(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0
.end method

.method public setWantAudioData(Z)V
    .locals 1
    .parameter "wantAudioData"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$300(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceEngine;->setWantAudioData(Z)V

    .line 132
    return-void
.end method

.method public unloadConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "configToUnload"

    .prologue
    .line 105
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    #getter for: Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$300(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceEngine;->unloadConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 108
    return-void
.end method
